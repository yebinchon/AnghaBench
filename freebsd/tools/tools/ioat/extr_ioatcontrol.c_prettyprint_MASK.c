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
typedef  int uintmax_t ;
struct ioat_test {int* status; unsigned int chain_depth; int duration; scalar_t__ buffer_size; } ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  bytesh ;
typedef  int /*<<< orphan*/  bps ;

/* Variables and functions */
 int EX_OK ; 
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int /*<<< orphan*/  HN_DECIMAL ; 
 size_t IOAT_TEST_MISCOMPARE ; 
 size_t IOAT_TEST_NO_DMA_ENGINE ; 
 size_t IOAT_TEST_NO_MEMORY ; 
 size_t IOAT_TEST_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int
FUNC2(struct ioat_test *t)
{
	char bps[10], bytesh[10];
	uintmax_t bytes;

	if (t->status[IOAT_TEST_NO_DMA_ENGINE] != 0 ||
	    t->status[IOAT_TEST_NO_MEMORY] != 0 ||
	    t->status[IOAT_TEST_MISCOMPARE] != 0) {
		FUNC1("Errors:\n");
		if (t->status[IOAT_TEST_NO_DMA_ENGINE] != 0)
			FUNC1("\tNo DMA engine present: %u\n",
			    (unsigned)t->status[IOAT_TEST_NO_DMA_ENGINE]);
		if (t->status[IOAT_TEST_NO_MEMORY] != 0)
			FUNC1("\tOut of memory: %u\n",
			    (unsigned)t->status[IOAT_TEST_NO_MEMORY]);
		if (t->status[IOAT_TEST_MISCOMPARE] != 0)
			FUNC1("\tMiscompares: %u\n",
			    (unsigned)t->status[IOAT_TEST_MISCOMPARE]);
	}

	FUNC1("Processed %u txns\n", (unsigned)t->status[IOAT_TEST_OK] /
	    t->chain_depth);
	bytes = (uintmax_t)t->buffer_size * t->status[IOAT_TEST_OK];

	FUNC0(bytesh, sizeof(bytesh), (int64_t)bytes, "B",
	    HN_AUTOSCALE, HN_DECIMAL);
	if (t->duration) {
		FUNC0(bps, sizeof(bps),
		    (int64_t)1000 * bytes / t->duration, "B/s", HN_AUTOSCALE,
		    HN_DECIMAL);
		FUNC1("%ju (%s) copied in %u ms (%s)\n", bytes, bytesh,
		    (unsigned)t->duration, bps);
	} else
		FUNC1("%ju (%s) copied\n", bytes, bytesh);

	return (EX_OK);
}