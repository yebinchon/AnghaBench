#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct test_transaction {int depth; int /*<<< orphan*/  length; scalar_t__* crc; scalar_t__* buf; } ;
struct ioat_test {scalar_t__ testkind; int /*<<< orphan*/  free_q; int /*<<< orphan*/  pend_q; int /*<<< orphan*/ * status; int /*<<< orphan*/  raw_target; scalar_t__ raw_write; } ;
struct bus_dmadesc {int dummy; } ;
typedef  int /*<<< orphan*/  bus_dmaengine_t ;
typedef  int /*<<< orphan*/  (* bus_dmaengine_callback_t ) (struct test_transaction*,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct test_transaction* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct test_transaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct test_transaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct bus_dmadesc* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct test_transaction*,int /*<<< orphan*/ ),struct test_transaction*,int) ; 
 struct bus_dmadesc* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct test_transaction*,int /*<<< orphan*/ ),struct test_transaction*,int) ; 
 struct bus_dmadesc* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct test_transaction*,int /*<<< orphan*/ ),struct test_transaction*,int) ; 
 struct bus_dmadesc* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct test_transaction*,int /*<<< orphan*/ ),struct test_transaction*,int) ; 
 struct bus_dmadesc* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct test_transaction*,int /*<<< orphan*/ ),struct test_transaction*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct test_transaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioat_test_lk ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 

__attribute__((used)) static void
FUNC18(struct ioat_test *test, bus_dmaengine_t dma)
{
	struct test_transaction *tx;
	struct bus_dmadesc *desc;
	bus_dmaengine_callback_t cb;
	bus_addr_t src, dest;
	uint64_t fillpattern;
	uint32_t i, flags;

	desc = NULL;

	FUNC0();
	while (FUNC2(&test->free_q))
		FUNC16(&test->free_q, &ioat_test_lk, 0, "test_submit", 0);

	tx = FUNC3(&test->free_q);
	FUNC5(&test->free_q, tx, entry);
	FUNC4(&test->pend_q, tx, entry);
	FUNC1();

	if (test->testkind != IOAT_TEST_MEMCPY)
		FUNC7(dma);
	for (i = 0; i < tx->depth; i++) {
		if (test->testkind == IOAT_TEST_MEMCPY) {
			FUNC15(tx->buf[2 * i + 1], tx->buf[2 * i], tx->length);
			if (i == tx->depth - 1)
				FUNC13(tx, 0);
			continue;
		}

		src = FUNC17((vm_offset_t)tx->buf[2*i]);
		dest = FUNC17((vm_offset_t)tx->buf[2*i+1]);

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
			cb = NULL;
			flags = 0;
		}

		if (test->testkind == IOAT_TEST_DMA ||
		    test->testkind == IOAT_TEST_RAW_DMA)
			desc = FUNC9(dma, dest, src, tx->length, cb, tx,
			    flags);
		else if (test->testkind == IOAT_TEST_FILL) {
			fillpattern = *(uint64_t *)tx->buf[2*i];
			desc = FUNC8(dma, dest, fillpattern,
			    tx->length, cb, tx, flags);
		} else if (test->testkind == IOAT_TEST_DMA_8K) {
			bus_addr_t src2, dst2;

			src2 = FUNC17((vm_offset_t)tx->buf[2*i] + PAGE_SIZE);
			dst2 = FUNC17((vm_offset_t)tx->buf[2*i+1] + PAGE_SIZE);

			desc = FUNC10(dma, dest, dst2, src, src2,
			    cb, tx, flags);
		} else if (test->testkind == IOAT_TEST_DMA_8K_PB) {
			bus_addr_t src2, dst2;

			src2 = FUNC17((vm_offset_t)tx->buf[2*i+1] + PAGE_SIZE);
			dst2 = FUNC17((vm_offset_t)tx->buf[2*i] + PAGE_SIZE);

			desc = FUNC10(dma, dest, dst2, src, src2,
			    cb, tx, flags);
		} else if (test->testkind == IOAT_TEST_DMA_CRC) {
			bus_addr_t crc;

			tx->crc[i] = 0;
			crc = FUNC17((vm_offset_t)&tx->crc[i]);
			desc = FUNC12(dma, src, tx->length,
			    NULL, crc, cb, tx, flags | DMA_CRC_STORE);
		} else if (test->testkind == IOAT_TEST_DMA_CRC_COPY) {
			bus_addr_t crc;

			tx->crc[i] = 0;
			crc = FUNC17((vm_offset_t)&tx->crc[i]);
			desc = FUNC11(dma, dest, src, tx->length,
			    NULL, crc, cb, tx, flags | DMA_CRC_STORE);
		}
		if (desc == NULL)
			break;
	}
	if (test->testkind == IOAT_TEST_MEMCPY)
		return;
	FUNC14(dma);

	/*
	 * We couldn't issue an IO -- either the device is being detached or
	 * the HW reset.  Essentially spin until the device comes back up or
	 * our timer expires.
	 */
	if (desc == NULL && tx->depth > 0) {
		FUNC6(&test->status[IOAT_TEST_NO_DMA_ENGINE], tx->depth);
		FUNC0();
		FUNC5(&test->pend_q, tx, entry);
		FUNC4(&test->free_q, tx, entry);
		FUNC1();
	}
}