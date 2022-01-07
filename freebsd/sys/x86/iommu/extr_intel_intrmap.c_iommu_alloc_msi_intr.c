
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vmem_addr_t ;
typedef size_t u_int ;
struct dmar_unit {int irtids; int ir_enabled; } ;
typedef int device_t ;


 int EOPNOTSUPP ;
 int KASSERT (int,char*) ;
 int M_FIRSTFIT ;
 int M_NOWAIT ;
 struct dmar_unit* dmar_ir_find (int ,int *,int *) ;
 int vmem_alloc (int ,size_t,int,size_t*) ;

int
iommu_alloc_msi_intr(device_t src, u_int *cookies, u_int count)
{
 struct dmar_unit *unit;
 vmem_addr_t vmem_res;
 u_int idx, i;
 int error;

 unit = dmar_ir_find(src, ((void*)0), ((void*)0));
 if (unit == ((void*)0) || !unit->ir_enabled) {
  for (i = 0; i < count; i++)
   cookies[i] = -1;
  return (EOPNOTSUPP);
 }

 error = vmem_alloc(unit->irtids, count, M_FIRSTFIT | M_NOWAIT,
     &vmem_res);
 if (error != 0) {
  KASSERT(error != EOPNOTSUPP,
      ("impossible EOPNOTSUPP from vmem"));
  return (error);
 }
 idx = vmem_res;
 for (i = 0; i < count; i++)
  cookies[i] = idx + i;
 return (0);
}
