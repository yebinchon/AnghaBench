
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int busaddr; } ;
typedef TYPE_1__ drm_dma_handle_t ;
struct TYPE_5__ {int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
drm_pci_busdma_callback(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 drm_dma_handle_t *dmah = arg;

 if (error != 0)
  return;

 KASSERT(nsegs == 1, ("drm_pci_busdma_callback: bad dma segment count"));
 dmah->busaddr = segs[0].ds_addr;
}
