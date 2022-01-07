
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct dmar_unit {int dummy; } ;
typedef int device_t ;


 struct dmar_unit* dmar_ir_find (int ,int *,int *) ;
 int dmar_ir_free_irte (struct dmar_unit*,int) ;

int
iommu_unmap_msi_intr(device_t src, u_int cookie)
{
 struct dmar_unit *unit;

 if (cookie == -1)
  return (0);
 unit = dmar_ir_find(src, ((void*)0), ((void*)0));
 return (dmar_ir_free_irte(unit, cookie));
}
