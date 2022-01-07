
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
struct TYPE_5__ {int SRBSGPhyAddr; } ;
typedef TYPE_2__* PSRB ;



__attribute__((used)) static void
trm_srbmapSG(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 PSRB pSRB;

 pSRB=(PSRB) arg;
 pSRB->SRBSGPhyAddr=segs->ds_addr;
 return;
}
