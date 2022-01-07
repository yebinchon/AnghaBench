
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pcibus_devinfo {int * opd_dma_tag; } ;
typedef scalar_t__ device_t ;
typedef int * bus_dma_tag_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int BUS_SPACE_UNRESTRICTED ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int **) ;
 int bus_get_dma_tag (scalar_t__) ;
 struct ofw_pcibus_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int phyp_iommu_set_dma_tag (scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static bus_dma_tag_t
plpar_pcibus_get_dma_tag(device_t dev, device_t child)
{
 struct ofw_pcibus_devinfo *dinfo;

 while (device_get_parent(child) != dev)
  child = device_get_parent(child);

 dinfo = device_get_ivars(child);

 if (dinfo->opd_dma_tag != ((void*)0))
  return (dinfo->opd_dma_tag);

 bus_dma_tag_create(bus_get_dma_tag(dev),
     1, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), BUS_SPACE_MAXSIZE, BUS_SPACE_UNRESTRICTED,
     BUS_SPACE_MAXSIZE, 0, ((void*)0), ((void*)0), &dinfo->opd_dma_tag);
 phyp_iommu_set_dma_tag(dev, child, dinfo->opd_dma_tag);

 return (dinfo->opd_dma_tag);
}
