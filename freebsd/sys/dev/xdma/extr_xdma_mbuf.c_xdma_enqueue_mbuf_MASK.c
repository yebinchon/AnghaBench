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
struct TYPE_6__ {int /*<<< orphan*/  queue_in; int /*<<< orphan*/ * xdma; } ;
typedef  TYPE_1__ xdma_channel_t ;
typedef  void* uint8_t ;
struct xdma_request {int direction; uintptr_t dst_addr; uintptr_t src_addr; void* dst_width; void* src_width; int /*<<< orphan*/  req_type; struct mbuf* m; } ;
struct mbuf {int dummy; } ;
typedef  enum xdma_direction { ____Placeholder_xdma_direction } xdma_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct xdma_request*,int /*<<< orphan*/ ) ; 
 int XDMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  XR_TYPE_MBUF ; 
 struct xdma_request* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  xr_next ; 

int
FUNC4(xdma_channel_t *xchan, struct mbuf **mp,
    uintptr_t addr, uint8_t src_width, uint8_t dst_width,
    enum xdma_direction dir)
{
	struct xdma_request *xr;
	xdma_controller_t *xdma;

	xdma = xchan->xdma;

	xr = FUNC3(xchan);
	if (xr == NULL)
		return (-1); /* No space is available yet. */

	xr->direction = dir;
	xr->m = *mp;
	xr->req_type = XR_TYPE_MBUF;
	if (dir == XDMA_MEM_TO_DEV) {
		xr->dst_addr = addr;
		xr->src_addr = 0;
	} else {
		xr->src_addr = addr;
		xr->dst_addr = 0;
	}
	xr->src_width = src_width;
	xr->dst_width = dst_width;

	FUNC0(xchan);
	FUNC2(&xchan->queue_in, xr, xr_next);
	FUNC1(xchan);

	return (0);
}