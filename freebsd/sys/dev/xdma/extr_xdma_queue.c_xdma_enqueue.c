
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdma_controller_t ;
struct TYPE_6__ {int queue_in; int * xdma; } ;
typedef TYPE_1__ xdma_channel_t ;
typedef void* uint8_t ;
struct xdma_request {int direction; int block_num; uintptr_t src_addr; uintptr_t dst_addr; void* dst_width; void* src_width; int req_type; int block_len; int * bp; int * m; void* user; } ;
typedef enum xdma_direction { ____Placeholder_xdma_direction } xdma_direction ;
typedef int bus_size_t ;


 int KASSERT (int ,char*) ;
 int QUEUE_IN_LOCK (TYPE_1__*) ;
 int QUEUE_IN_UNLOCK (TYPE_1__*) ;
 int TAILQ_INSERT_TAIL (int *,struct xdma_request*,int ) ;
 int XR_TYPE_VIRT ;
 struct xdma_request* xchan_bank_get (TYPE_1__*) ;
 int xr_next ;

int
xdma_enqueue(xdma_channel_t *xchan, uintptr_t src, uintptr_t dst,
    uint8_t src_width, uint8_t dst_width, bus_size_t len,
    enum xdma_direction dir, void *user)
{
 struct xdma_request *xr;
 xdma_controller_t *xdma;

 xdma = xchan->xdma;
 KASSERT(xdma != ((void*)0), ("xdma is NULL"));

 xr = xchan_bank_get(xchan);
 if (xr == ((void*)0))
  return (-1);

 xr->user = user;
 xr->direction = dir;
 xr->m = ((void*)0);
 xr->bp = ((void*)0);
 xr->block_num = 1;
 xr->block_len = len;
 xr->req_type = XR_TYPE_VIRT;
 xr->src_addr = src;
 xr->dst_addr = dst;
 xr->src_width = src_width;
 xr->dst_width = dst_width;

 QUEUE_IN_LOCK(xchan);
 TAILQ_INSERT_TAIL(&xchan->queue_in, xr, xr_next);
 QUEUE_IN_UNLOCK(xchan);

 return (0);
}
