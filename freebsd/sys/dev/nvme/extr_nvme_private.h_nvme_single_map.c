
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int printf (char*,int) ;

__attribute__((used)) static __inline void
nvme_single_map(void *arg, bus_dma_segment_t *seg, int nseg, int error)
{
 uint64_t *bus_addr = (uint64_t *)arg;

 if (error != 0)
  printf("nvme_single_map err %d\n", error);
 *bus_addr = seg[0].ds_addr;
}
