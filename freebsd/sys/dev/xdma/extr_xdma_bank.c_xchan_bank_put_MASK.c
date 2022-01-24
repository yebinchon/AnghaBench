#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bank; } ;
typedef  TYPE_1__ xdma_channel_t ;
struct xdma_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct xdma_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xr_next ; 

int
FUNC3(xdma_channel_t *xchan, struct xdma_request *xr)
{

	FUNC0(xchan);
	FUNC2(&xchan->bank, xr, xr_next);
	FUNC1(xchan);

	return (0);
}