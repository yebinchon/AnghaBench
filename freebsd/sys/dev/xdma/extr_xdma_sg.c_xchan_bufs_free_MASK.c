#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int caps; int xr_num; int /*<<< orphan*/  dma_tag_bufs; struct xdma_request* xr_mem; } ;
typedef  TYPE_1__ xdma_channel_t ;
struct xchan_buf {int /*<<< orphan*/  map; } ;
struct xdma_request {struct xchan_buf buf; } ;

/* Variables and functions */
 int XCHAN_BUFS_ALLOCATED ; 
 int XCHAN_CAP_BUSDMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(xdma_channel_t *xchan)
{
	struct xdma_request *xr;
	struct xchan_buf *b;
	int i;

	if ((xchan->flags & XCHAN_BUFS_ALLOCATED) == 0)
		return (-1);

	if (xchan->caps & XCHAN_CAP_BUSDMA) {
		for (i = 0; i < xchan->xr_num; i++) {
			xr = &xchan->xr_mem[i];
			b = &xr->buf;
			FUNC1(xchan->dma_tag_bufs, b->map);
		}
		FUNC0(xchan->dma_tag_bufs);
	} else
		FUNC2(xchan);

	xchan->flags &= ~XCHAN_BUFS_ALLOCATED;

	return (0);
}