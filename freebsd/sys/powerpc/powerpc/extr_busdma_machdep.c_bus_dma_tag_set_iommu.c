
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {void* iommu_cookie; int iommu; } ;



int
bus_dma_tag_set_iommu(bus_dma_tag_t tag, device_t iommu, void *cookie)
{
 tag->iommu = iommu;
 tag->iommu_cookie = cookie;

 return (0);
}
