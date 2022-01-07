
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_state {scalar_t__* is_sb; } ;
typedef int bus_addr_t ;


 int IOMMU_WRITE8 (struct iommu_state*,int ,int ,int ) ;
 int ISR_PGFLUSH ;
 int * is_sb ;

__attribute__((used)) static __inline void
iommu_strbuf_flushpg(struct iommu_state *is, bus_addr_t va)
{
 int i;

 for (i = 0; i < 2; i++)
  if (is->is_sb[i] != 0)
   IOMMU_WRITE8(is, is_sb[i], ISR_PGFLUSH, va);
}
