
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hdac_dma {int dma_paddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
hdac_dma_cb(void *callback_arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct hdac_dma *dma;

 if (error == 0) {
  dma = (struct hdac_dma *)callback_arg;
  dma->dma_paddr = segs[0].ds_addr;
 }
}
