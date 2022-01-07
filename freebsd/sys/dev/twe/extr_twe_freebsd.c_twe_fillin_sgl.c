
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
struct TYPE_6__ {scalar_t__ length; scalar_t__ address; } ;
typedef TYPE_2__ TWE_SG_Entry ;



__attribute__((used)) static void
twe_fillin_sgl(TWE_SG_Entry *sgl, bus_dma_segment_t *segs, int nsegments, int max_sgl)
{
    int i;

    for (i = 0; i < nsegments; i++) {
 sgl[i].address = segs[i].ds_addr;
 sgl[i].length = segs[i].ds_len;
    }
    for (; i < max_sgl; i++) {
 sgl[i].address = 0;
 sgl[i].length = 0;
    }
}
