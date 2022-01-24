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
typedef  int /*<<< orphan*/  iflib_dma_info_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

int
FUNC2(if_ctx_t ctx, int *sizes, iflib_dma_info_t *dmalist, int mapflags, int count)
{
	int i, err;
	iflib_dma_info_t *dmaiter;

	dmaiter = dmalist;
	for (i = 0; i < count; i++, dmaiter++) {
		if ((err = FUNC0(ctx, sizes[i], *dmaiter, mapflags)) != 0)
			break;
	}
	if (err)
		FUNC1(dmalist, i);
	return (err);
}