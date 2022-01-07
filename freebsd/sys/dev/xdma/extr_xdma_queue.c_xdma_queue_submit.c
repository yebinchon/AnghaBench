
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdma_controller_t ;
struct TYPE_6__ {int flags; int * xdma; } ;
typedef TYPE_1__ xdma_channel_t ;


 int KASSERT (int ,char*) ;
 int XCHAN_LOCK (TYPE_1__*) ;
 int XCHAN_TYPE_SG ;
 int XCHAN_UNLOCK (TYPE_1__*) ;
 int xdma_queue_submit_sg (TYPE_1__*) ;

int
xdma_queue_submit(xdma_channel_t *xchan)
{
 xdma_controller_t *xdma;
 int ret;

 xdma = xchan->xdma;
 KASSERT(xdma != ((void*)0), ("xdma is NULL"));

 ret = 0;

 XCHAN_LOCK(xchan);

 if (xchan->flags & XCHAN_TYPE_SG)
  ret = xdma_queue_submit_sg(xchan);

 XCHAN_UNLOCK(xchan);

 return (ret);
}
