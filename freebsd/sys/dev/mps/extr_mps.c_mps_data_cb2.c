
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_size_t ;
typedef int bus_dma_segment_t ;


 int mps_data_cb (void*,int *,int,int) ;

__attribute__((used)) static void
mps_data_cb2(void *arg, bus_dma_segment_t *segs, int nsegs, bus_size_t mapsize,
      int error)
{
 mps_data_cb(arg, segs, nsegs, error);
}
