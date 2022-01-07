
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpt_map_info {int error; int phys; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



void
mpt_map_rquest(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct mpt_map_info *map_info;

 map_info = (struct mpt_map_info *)arg;
 map_info->error = error;
 map_info->phys = segs->ds_addr;
}
