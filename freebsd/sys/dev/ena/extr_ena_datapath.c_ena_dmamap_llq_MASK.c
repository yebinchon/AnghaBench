#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ena_com_buf {int /*<<< orphan*/  len; scalar_t__ paddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ds_len; scalar_t__ ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
	struct ena_com_buf *ena_buf = arg;

	if (FUNC1(error != 0)) {
		ena_buf->paddr = 0;
		return;
	}

	FUNC0(nseg == 1, ("Invalid num of segments for LLQ dma"));

	ena_buf->paddr = segs->ds_addr;
	ena_buf->len = segs->ds_len;
}