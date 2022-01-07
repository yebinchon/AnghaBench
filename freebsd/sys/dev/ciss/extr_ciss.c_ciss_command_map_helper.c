
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
ciss_command_map_helper(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
    uint32_t *addr;

    addr = arg;
    *addr = segs[0].ds_addr;
}
