
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ps3bus_softc {int rcount; TYPE_1__* regions; } ;
struct ps3bus_devinfo {scalar_t__* dma_base; } ;
typedef int device_t ;
typedef int bus_size_t ;
struct TYPE_5__ {scalar_t__ ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
typedef int bus_addr_t ;
struct TYPE_4__ {scalar_t__ mr_start; scalar_t__ mr_size; } ;


 int KASSERT (int,char*) ;
 struct ps3bus_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ps3_iommu_map(device_t dev, bus_dma_segment_t *segs, int *nsegs,
    bus_addr_t min, bus_addr_t max, bus_size_t alignment, bus_addr_t boundary,
    void *cookie)
{
 struct ps3bus_devinfo *dinfo = cookie;
 struct ps3bus_softc *sc = device_get_softc(dev);
 int i, j;

 for (i = 0; i < *nsegs; i++) {
  for (j = 0; j < sc->rcount; j++) {
   if (segs[i].ds_addr >= sc->regions[j].mr_start &&
       segs[i].ds_addr < sc->regions[j].mr_start +
         sc->regions[j].mr_size)
    break;
  }
  KASSERT(j < sc->rcount,
      ("Trying to map address %#lx not in physical memory",
      segs[i].ds_addr));

  segs[i].ds_addr = dinfo->dma_base[j] +
      (segs[i].ds_addr - sc->regions[j].mr_start);
 }

 return (0);
}
