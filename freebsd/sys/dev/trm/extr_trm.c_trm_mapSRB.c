
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
struct TYPE_5__ {int srb_physbase; } ;
typedef TYPE_2__* PACB ;



__attribute__((used)) static void
trm_mapSRB(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 PACB pACB;

 pACB = (PACB)arg;
 pACB->srb_physbase = segs->ds_addr;
}
