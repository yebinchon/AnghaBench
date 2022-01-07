
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdma_controller_t ;
struct TYPE_6__ {int queue_in; int * xdma; } ;
typedef TYPE_1__ xdma_channel_t ;
typedef void* uint8_t ;
struct xdma_request {int direction; uintptr_t dst_addr; uintptr_t src_addr; void* dst_width; void* src_width; int req_type; struct mbuf* m; } ;
struct mbuf {int dummy; } ;
typedef enum xdma_direction { ____Placeholder_xdma_direction } xdma_direction ;


 int QUEUE_IN_LOCK (TYPE_1__*) ;
 int QUEUE_IN_UNLOCK (TYPE_1__*) ;
 int TAILQ_INSERT_TAIL (int *,struct xdma_request*,int ) ;
 int XDMA_MEM_TO_DEV ;
 int XR_TYPE_MBUF ;
 struct xdma_request* xchan_bank_get (TYPE_1__*) ;
 int xr_next ;

int
xdma_enqueue_mbuf(xdma_channel_t *xchan, struct mbuf **mp,
    uintptr_t addr, uint8_t src_width, uint8_t dst_width,
    enum xdma_direction dir)
{
 struct xdma_request *xr;
 xdma_controller_t *xdma;

 xdma = xchan->xdma;

 xr = xchan_bank_get(xchan);
 if (xr == ((void*)0))
  return (-1);

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

 QUEUE_IN_LOCK(xchan);
 TAILQ_INSERT_TAIL(&xchan->queue_in, xr, xr_next);
 QUEUE_IN_UNLOCK(xchan);

 return (0);
}
