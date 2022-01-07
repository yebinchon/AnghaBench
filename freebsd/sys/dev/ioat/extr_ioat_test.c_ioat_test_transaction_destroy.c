
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_transaction {struct test_transaction** buf; int length; struct ioat_test* test; } ;
struct ioat_test {scalar_t__ testkind; } ;


 int IOAT_MAX_BUFS ;
 scalar_t__ IOAT_TEST_DMA_8K ;
 int M_IOAT_TEST ;
 int contigfree (struct test_transaction*,int ,int ) ;
 int free (struct test_transaction*,int ) ;

__attribute__((used)) static void
ioat_test_transaction_destroy(struct test_transaction *tx)
{
 struct ioat_test *test;
 int i;

 test = tx->test;

 for (i = 0; i < IOAT_MAX_BUFS; i++) {
  if (tx->buf[i] != ((void*)0)) {
   if (test->testkind == IOAT_TEST_DMA_8K)
    free(tx->buf[i], M_IOAT_TEST);
   else
    contigfree(tx->buf[i], tx->length, M_IOAT_TEST);
   tx->buf[i] = ((void*)0);
  }
 }

 free(tx, M_IOAT_TEST);
}
