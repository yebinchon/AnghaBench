
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct siis_dc_cb_args {int error; int maddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
siis_dmasetupc_cb(void *xsc, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct siis_dc_cb_args *dcba = (struct siis_dc_cb_args *)xsc;

 if (!(dcba->error = error))
  dcba->maddr = segs[0].ds_addr;
}
