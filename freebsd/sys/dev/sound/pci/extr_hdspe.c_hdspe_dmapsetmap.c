
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dev; } ;
typedef int bus_dma_segment_t ;


 int device_printf (int ,char*) ;

__attribute__((used)) static void
hdspe_dmapsetmap(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct sc_info *sc;

 sc = (struct sc_info *)arg;




}
