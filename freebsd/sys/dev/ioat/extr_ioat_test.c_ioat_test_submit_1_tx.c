
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct test_transaction {int depth; int length; scalar_t__* crc; scalar_t__* buf; } ;
struct ioat_test {scalar_t__ testkind; int free_q; int pend_q; int * status; int raw_target; scalar_t__ raw_write; } ;
struct bus_dmadesc {int dummy; } ;
typedef int bus_dmaengine_t ;
typedef int (* bus_dmaengine_callback_t ) (struct test_transaction*,int ) ;
typedef int bus_addr_t ;


 int DMA_CRC_STORE ;
 int DMA_INT_EN ;
 scalar_t__ IOAT_TEST_DMA ;
 scalar_t__ IOAT_TEST_DMA_8K ;
 scalar_t__ IOAT_TEST_DMA_8K_PB ;
 scalar_t__ IOAT_TEST_DMA_CRC ;
 scalar_t__ IOAT_TEST_DMA_CRC_COPY ;
 scalar_t__ IOAT_TEST_FILL ;
 scalar_t__ IOAT_TEST_MEMCPY ;
 size_t IOAT_TEST_NO_DMA_ENGINE ;
 scalar_t__ IOAT_TEST_RAW_DMA ;
 int IT_LOCK () ;
 int IT_UNLOCK () ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct test_transaction* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct test_transaction*,int ) ;
 int TAILQ_REMOVE (int *,struct test_transaction*,int ) ;
 int atomic_add_32 (int *,int) ;
 int entry ;
 int ioat_acquire (int ) ;
 struct bus_dmadesc* ioat_blockfill (int ,int ,int ,int ,int (*) (struct test_transaction*,int ),struct test_transaction*,int) ;
 struct bus_dmadesc* ioat_copy (int ,int ,int ,int ,int (*) (struct test_transaction*,int ),struct test_transaction*,int) ;
 struct bus_dmadesc* ioat_copy_8k_aligned (int ,int ,int ,int ,int ,int (*) (struct test_transaction*,int ),struct test_transaction*,int) ;
 struct bus_dmadesc* ioat_copy_crc (int ,int ,int ,int ,int *,int ,int (*) (struct test_transaction*,int ),struct test_transaction*,int) ;
 struct bus_dmadesc* ioat_crc (int ,int ,int ,int *,int ,int (*) (struct test_transaction*,int ),struct test_transaction*,int) ;
 int ioat_dma_test_callback (struct test_transaction*,int ) ;
 int ioat_release (int ) ;
 int ioat_test_lk ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int msleep (int *,int *,int ,char*,int ) ;
 int vtophys (scalar_t__) ;

__attribute__((used)) static void
ioat_test_submit_1_tx(struct ioat_test *test, bus_dmaengine_t dma)
{
 struct test_transaction *tx;
 struct bus_dmadesc *desc;
 bus_dmaengine_callback_t cb;
 bus_addr_t src, dest;
 uint64_t fillpattern;
 uint32_t i, flags;

 desc = ((void*)0);

 IT_LOCK();
 while (TAILQ_EMPTY(&test->free_q))
  msleep(&test->free_q, &ioat_test_lk, 0, "test_submit", 0);

 tx = TAILQ_FIRST(&test->free_q);
 TAILQ_REMOVE(&test->free_q, tx, entry);
 TAILQ_INSERT_HEAD(&test->pend_q, tx, entry);
 IT_UNLOCK();

 if (test->testkind != IOAT_TEST_MEMCPY)
  ioat_acquire(dma);
 for (i = 0; i < tx->depth; i++) {
  if (test->testkind == IOAT_TEST_MEMCPY) {
   memcpy(tx->buf[2 * i + 1], tx->buf[2 * i], tx->length);
   if (i == tx->depth - 1)
    ioat_dma_test_callback(tx, 0);
   continue;
  }

  src = vtophys((vm_offset_t)tx->buf[2*i]);
  dest = vtophys((vm_offset_t)tx->buf[2*i+1]);

  if (test->testkind == IOAT_TEST_RAW_DMA) {
   if (test->raw_write)
    dest = test->raw_target;
   else
    src = test->raw_target;
  }

  if (i == tx->depth - 1) {
   cb = ioat_dma_test_callback;
   flags = DMA_INT_EN;
  } else {
   cb = ((void*)0);
   flags = 0;
  }

  if (test->testkind == IOAT_TEST_DMA ||
      test->testkind == IOAT_TEST_RAW_DMA)
   desc = ioat_copy(dma, dest, src, tx->length, cb, tx,
       flags);
  else if (test->testkind == IOAT_TEST_FILL) {
   fillpattern = *(uint64_t *)tx->buf[2*i];
   desc = ioat_blockfill(dma, dest, fillpattern,
       tx->length, cb, tx, flags);
  } else if (test->testkind == IOAT_TEST_DMA_8K) {
   bus_addr_t src2, dst2;

   src2 = vtophys((vm_offset_t)tx->buf[2*i] + PAGE_SIZE);
   dst2 = vtophys((vm_offset_t)tx->buf[2*i+1] + PAGE_SIZE);

   desc = ioat_copy_8k_aligned(dma, dest, dst2, src, src2,
       cb, tx, flags);
  } else if (test->testkind == IOAT_TEST_DMA_8K_PB) {
   bus_addr_t src2, dst2;

   src2 = vtophys((vm_offset_t)tx->buf[2*i+1] + PAGE_SIZE);
   dst2 = vtophys((vm_offset_t)tx->buf[2*i] + PAGE_SIZE);

   desc = ioat_copy_8k_aligned(dma, dest, dst2, src, src2,
       cb, tx, flags);
  } else if (test->testkind == IOAT_TEST_DMA_CRC) {
   bus_addr_t crc;

   tx->crc[i] = 0;
   crc = vtophys((vm_offset_t)&tx->crc[i]);
   desc = ioat_crc(dma, src, tx->length,
       ((void*)0), crc, cb, tx, flags | DMA_CRC_STORE);
  } else if (test->testkind == IOAT_TEST_DMA_CRC_COPY) {
   bus_addr_t crc;

   tx->crc[i] = 0;
   crc = vtophys((vm_offset_t)&tx->crc[i]);
   desc = ioat_copy_crc(dma, dest, src, tx->length,
       ((void*)0), crc, cb, tx, flags | DMA_CRC_STORE);
  }
  if (desc == ((void*)0))
   break;
 }
 if (test->testkind == IOAT_TEST_MEMCPY)
  return;
 ioat_release(dma);






 if (desc == ((void*)0) && tx->depth > 0) {
  atomic_add_32(&test->status[IOAT_TEST_NO_DMA_ENGINE], tx->depth);
  IT_LOCK();
  TAILQ_REMOVE(&test->pend_q, tx, entry);
  TAILQ_INSERT_HEAD(&test->free_q, tx, entry);
  IT_UNLOCK();
 }
}
