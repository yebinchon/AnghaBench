
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdma_controller_t ;
struct TYPE_7__ {int caps; int * xdma; } ;
typedef TYPE_2__ xdma_channel_t ;
struct TYPE_6__ {int nsegs; int nsegs_left; } ;
struct xdma_request {TYPE_1__ buf; } ;
struct bus_dma_segment {int dummy; } ;


 int XCHAN_CAP_BUSDMA ;
 int _xdma_load_data (TYPE_2__*,struct xdma_request*,struct bus_dma_segment*) ;
 int _xdma_load_data_busdma (TYPE_2__*,struct xdma_request*,struct bus_dma_segment*) ;

__attribute__((used)) static int
xdma_load_data(xdma_channel_t *xchan,
    struct xdma_request *xr, struct bus_dma_segment *seg)
{
 xdma_controller_t *xdma;
 int error;
 int nsegs;

 xdma = xchan->xdma;

 error = 0;
 nsegs = 0;

 if (xchan->caps & XCHAN_CAP_BUSDMA)
  nsegs = _xdma_load_data_busdma(xchan, xr, seg);
 else
  nsegs = _xdma_load_data(xchan, xr, seg);
 if (nsegs == 0)
  return (0);

 xr->buf.nsegs = nsegs;
 xr->buf.nsegs_left = nsegs;

 return (nsegs);
}
