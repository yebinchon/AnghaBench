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
struct test_transaction {struct test_transaction** buf; int /*<<< orphan*/  length; struct ioat_test* test; } ;
struct ioat_test {scalar_t__ testkind; } ;

/* Variables and functions */
 int IOAT_MAX_BUFS ; 
 scalar_t__ IOAT_TEST_DMA_8K ; 
 int /*<<< orphan*/  M_IOAT_TEST ; 
 int /*<<< orphan*/  FUNC0 (struct test_transaction*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct test_transaction*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct test_transaction *tx)
{
	struct ioat_test *test;
	int i;

	test = tx->test;

	for (i = 0; i < IOAT_MAX_BUFS; i++) {
		if (tx->buf[i] != NULL) {
			if (test->testkind == IOAT_TEST_DMA_8K)
				FUNC1(tx->buf[i], M_IOAT_TEST);
			else
				FUNC0(tx->buf[i], tx->length, M_IOAT_TEST);
			tx->buf[i] = NULL;
		}
	}

	FUNC1(tx, M_IOAT_TEST);
}