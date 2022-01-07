
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_size_t ;
typedef int bus_dma_segment_t ;


 int sec_dma_map_desc_cb (void*,int *,int,int) ;

__attribute__((used)) static void
sec_dma_map_desc_cb2(void *arg, bus_dma_segment_t *segs, int nseg,
    bus_size_t size, int error)
{

 sec_dma_map_desc_cb(arg, segs, nseg, error);
}
