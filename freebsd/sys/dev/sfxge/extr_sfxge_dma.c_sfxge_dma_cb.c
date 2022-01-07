
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef scalar_t__ bus_addr_t ;



__attribute__((used)) static void
sfxge_dma_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 bus_addr_t *addr;

 addr = arg;

 if (error != 0) {
  *addr = 0;
  return;
 }

 *addr = segs[0].ds_addr;
}
