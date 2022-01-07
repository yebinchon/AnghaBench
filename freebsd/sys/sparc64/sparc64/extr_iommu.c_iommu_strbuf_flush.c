
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_state {int dummy; } ;
typedef int bus_addr_t ;


 int iommu_strbuf_flushpg (struct iommu_state*,int ) ;

__attribute__((used)) static __inline void
iommu_strbuf_flush(struct iommu_state *is, bus_addr_t va)
{

 iommu_strbuf_flushpg(is, va);
}
