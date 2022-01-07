
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3bus_softc {int rcount; TYPE_1__* regions; } ;
struct ps3bus_devinfo {scalar_t__ bustype; scalar_t__ devtype; int * dma_tag; int iommu_mtx; int * dma_base; int dev; int bus; } ;
typedef int device_t ;
typedef int * bus_dma_tag_t ;
struct TYPE_2__ {int mr_size; int mr_start; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 scalar_t__ PS3_BUSTYPE_STORAGE ;
 scalar_t__ PS3_BUSTYPE_SYSBUS ;
 scalar_t__ PS3_DEVTYPE_USB ;
 int bus_dma_tag_create (int *,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int **) ;
 int bus_dma_tag_set_iommu (int *,int ,struct ps3bus_devinfo*) ;
 int * bus_get_dma_tag (int ) ;
 struct ps3bus_devinfo* device_get_ivars (int ) ;
 struct ps3bus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;
 int lv1_allocate_device_dma_region (int ,int ,int ,int,int,int *) ;
 int lv1_map_device_dma_region (int ,int ,int ,int ,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static bus_dma_tag_t
ps3bus_get_dma_tag(device_t dev, device_t child)
{
 struct ps3bus_devinfo *dinfo = device_get_ivars(child);
 struct ps3bus_softc *sc = device_get_softc(dev);
 int i, err, flags, pagesize;

 if (dinfo->bustype != PS3_BUSTYPE_SYSBUS &&
     dinfo->bustype != PS3_BUSTYPE_STORAGE)
  return (bus_get_dma_tag(dev));

 mtx_lock(&dinfo->iommu_mtx);
 if (dinfo->dma_tag != ((void*)0)) {
  mtx_unlock(&dinfo->iommu_mtx);
  return (dinfo->dma_tag);
 }

 flags = 0;
 if (dinfo->bustype == PS3_BUSTYPE_SYSBUS &&
     dinfo->devtype == PS3_DEVTYPE_USB)
  flags = 2;

 pagesize = 24;
 if (dinfo->bustype == PS3_BUSTYPE_STORAGE)
  pagesize = 12;

 for (i = 0; i < sc->rcount; i++) {
  err = lv1_allocate_device_dma_region(dinfo->bus, dinfo->dev,
      sc->regions[i].mr_size, pagesize, flags,
      &dinfo->dma_base[i]);
  if (err != 0) {
   device_printf(child,
       "could not allocate DMA region %d: %d\n", i, err);
   goto fail;
  }

  err = lv1_map_device_dma_region(dinfo->bus, dinfo->dev,
      sc->regions[i].mr_start, dinfo->dma_base[i],
      sc->regions[i].mr_size,
      0xf800000000000800UL );
  if (err != 0) {
   device_printf(child,
       "could not map DMA region %d: %d\n", i, err);
   goto fail;
  }
 }

 err = bus_dma_tag_create(bus_get_dma_tag(dev),
     1, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), BUS_SPACE_MAXSIZE, 0, BUS_SPACE_MAXSIZE,
     0, ((void*)0), ((void*)0), &dinfo->dma_tag);
 if (dinfo->bustype != PS3_BUSTYPE_STORAGE)
  bus_dma_tag_set_iommu(dinfo->dma_tag, dev, dinfo);

fail:
 mtx_unlock(&dinfo->iommu_mtx);

 if (err)
  return (((void*)0));

 return (dinfo->dma_tag);
}
