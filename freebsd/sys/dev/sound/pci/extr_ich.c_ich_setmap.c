
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sc_info {int desc_addr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
ich_setmap(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct sc_info *sc = (struct sc_info *)arg;
 sc->desc_addr = segs->ds_addr;
 return;
}
