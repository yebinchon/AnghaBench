
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 scalar_t__ __predict_true (int) ;

__attribute__((used)) static void tso_map_long_header(void *dma_addr_ret,
    bus_dma_segment_t *segs, int nseg,
    int error)
{
 *(uint64_t *)dma_addr_ret = ((__predict_true(error == 0) &&
          __predict_true(nseg == 1)) ?
         segs->ds_addr : 0);
}
