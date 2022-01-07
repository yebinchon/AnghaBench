
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_transaction {int length; int ** buf; } ;
struct ioat_test {int buffer_size; scalar_t__ testkind; } ;


 int BUS_SPACE_MAXADDR ;
 scalar_t__ IOAT_TEST_DMA_8K ;
 int M_IOAT_TEST ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int * contigmalloc (int,int ,int,int ,int ,int ,int ) ;
 int ioat_test_transaction_destroy (struct test_transaction*) ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static struct
test_transaction *ioat_test_transaction_create(struct ioat_test *test,
    unsigned num_buffers)
{
 struct test_transaction *tx;
 unsigned i;

 tx = malloc(sizeof(*tx), M_IOAT_TEST, M_NOWAIT | M_ZERO);
 if (tx == ((void*)0))
  return (((void*)0));

 tx->length = test->buffer_size;

 for (i = 0; i < num_buffers; i++) {
  if (test->testkind == IOAT_TEST_DMA_8K)
   tx->buf[i] = malloc(test->buffer_size, M_IOAT_TEST,
       M_NOWAIT);
  else
   tx->buf[i] = contigmalloc(test->buffer_size,
       M_IOAT_TEST, M_NOWAIT, 0, BUS_SPACE_MAXADDR,
       PAGE_SIZE, 0);

  if (tx->buf[i] == ((void*)0)) {
   ioat_test_transaction_destroy(tx);
   return (((void*)0));
  }
 }
 return (tx);
}
