
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bank; } ;
typedef TYPE_1__ xdma_channel_t ;
struct xdma_request {int dummy; } ;


 int QUEUE_BANK_LOCK (TYPE_1__*) ;
 int QUEUE_BANK_UNLOCK (TYPE_1__*) ;
 int TAILQ_INSERT_TAIL (int *,struct xdma_request*,int ) ;
 int xr_next ;

int
xchan_bank_put(xdma_channel_t *xchan, struct xdma_request *xr)
{

 QUEUE_BANK_LOCK(xchan);
 TAILQ_INSERT_TAIL(&xchan->bank, xr, xr_next);
 QUEUE_BANK_UNLOCK(xchan);

 return (0);
}
