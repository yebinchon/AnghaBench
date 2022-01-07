
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdevice_devinfo {int * mdi_dma_tag; } ;
typedef int * device_t ;
typedef int * bus_dma_tag_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int BUS_SPACE_UNRESTRICTED ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int **) ;
 int bus_get_dma_tag (int *) ;
 struct vdevice_devinfo* device_get_ivars (int *) ;
 int * device_get_parent (int *) ;
 int phyp_iommu_set_dma_tag (int *,int *,int *) ;

__attribute__((used)) static bus_dma_tag_t
vdevice_get_dma_tag(device_t dev, device_t child)
{
 struct vdevice_devinfo *dinfo;
 while (child != ((void*)0) && device_get_parent(child) != dev)
  child = device_get_parent(child);
        dinfo = device_get_ivars(child);

 if (dinfo->mdi_dma_tag == ((void*)0)) {
  bus_dma_tag_create(bus_get_dma_tag(dev),
      1, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0), BUS_SPACE_MAXSIZE, BUS_SPACE_UNRESTRICTED,
      BUS_SPACE_MAXSIZE, 0, ((void*)0), ((void*)0), &dinfo->mdi_dma_tag);
  phyp_iommu_set_dma_tag(dev, child, dinfo->mdi_dma_tag);
 }

        return (dinfo->mdi_dma_tag);
}
