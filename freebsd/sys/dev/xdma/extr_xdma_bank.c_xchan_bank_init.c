
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdma_controller_t ;
struct TYPE_3__ {int xr_num; int bank; struct xdma_request* xr_mem; int * xdma; } ;
typedef TYPE_1__ xdma_channel_t ;
struct xdma_request {int dummy; } ;


 int KASSERT (int ,char*) ;
 int M_WAITOK ;
 int M_XDMA ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct xdma_request*,int ) ;
 struct xdma_request* malloc (int,int ,int) ;
 int xr_next ;

void
xchan_bank_init(xdma_channel_t *xchan)
{
 struct xdma_request *xr;
 xdma_controller_t *xdma;
 int i;

 xdma = xchan->xdma;
 KASSERT(xdma != ((void*)0), ("xdma is NULL"));

 xchan->xr_mem = malloc(sizeof(struct xdma_request) * xchan->xr_num,
     M_XDMA, M_WAITOK | M_ZERO);

 for (i = 0; i < xchan->xr_num; i++) {
  xr = &xchan->xr_mem[i];
  TAILQ_INSERT_TAIL(&xchan->bank, xr, xr_next);
 }
}
