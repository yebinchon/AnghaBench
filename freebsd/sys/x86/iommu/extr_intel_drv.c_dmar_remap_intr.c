
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct dmar_unit {struct dmar_msi_data* intrs; } ;
struct dmar_msi_data {scalar_t__ irq; int (* enable_intr ) (struct dmar_unit*) ;int msi_uaddr_reg; int msi_addr_reg; int msi_data_reg; int (* disable_intr ) (struct dmar_unit*) ;} ;
typedef int device_t ;


 int DMAR_INTR_TOTAL ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int ENOENT ;
 int PCIB_MAP_MSI (int ,int ,scalar_t__,int*,int*) ;
 int device_get_parent (int ) ;
 struct dmar_unit* device_get_softc (int ) ;
 int dmar_write4 (struct dmar_unit*,int ,int) ;
 int stub1 (struct dmar_unit*) ;
 int stub2 (struct dmar_unit*) ;

__attribute__((used)) static int
dmar_remap_intr(device_t dev, device_t child, u_int irq)
{
 struct dmar_unit *unit;
 struct dmar_msi_data *dmd;
 uint64_t msi_addr;
 uint32_t msi_data;
 int i, error;

 unit = device_get_softc(dev);
 for (i = 0; i < DMAR_INTR_TOTAL; i++) {
  dmd = &unit->intrs[i];
  if (irq == dmd->irq) {
   error = PCIB_MAP_MSI(device_get_parent(
       device_get_parent(dev)),
       dev, irq, &msi_addr, &msi_data);
   if (error != 0)
    return (error);
   DMAR_LOCK(unit);
   (dmd->disable_intr)(unit);
   dmar_write4(unit, dmd->msi_data_reg, msi_data);
   dmar_write4(unit, dmd->msi_addr_reg, msi_addr);
   dmar_write4(unit, dmd->msi_uaddr_reg, msi_addr >> 32);
   (dmd->enable_intr)(unit);
   DMAR_UNLOCK(unit);
   return (0);
  }
 }
 return (ENOENT);
}
