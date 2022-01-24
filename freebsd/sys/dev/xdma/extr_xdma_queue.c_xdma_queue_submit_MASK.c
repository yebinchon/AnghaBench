#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdma_controller_t ;
struct TYPE_6__ {int flags; int /*<<< orphan*/ * xdma; } ;
typedef  TYPE_1__ xdma_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int XCHAN_TYPE_SG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

int
FUNC4(xdma_channel_t *xchan)
{
	xdma_controller_t *xdma;
	int ret;

	xdma = xchan->xdma;
	FUNC0(xdma != NULL, ("xdma is NULL"));

	ret = 0;

	FUNC1(xchan);

	if (xchan->flags & XCHAN_TYPE_SG)
		ret = FUNC3(xchan);

	FUNC2(xchan);

	return (ret);
}