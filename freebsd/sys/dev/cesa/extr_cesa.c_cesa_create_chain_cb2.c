
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_size_t ;
typedef int bus_dma_segment_t ;


 int cesa_create_chain_cb (void*,int *,int,int) ;

__attribute__((used)) static void
cesa_create_chain_cb2(void *arg, bus_dma_segment_t *segs, int nseg,
    bus_size_t size, int error)
{

 cesa_create_chain_cb(arg, segs, nseg, error);
}
