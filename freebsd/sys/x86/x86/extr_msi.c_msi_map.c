
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct msi_intsrc {int msi_count; int msi_irq; int msi_remap_cookie; int msi_vector; int msi_cpu; int * msi_dev; struct msi_intsrc* msi_first; int msi_msix; } ;


 int ENOENT ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int INTEL_ADDR (struct msi_intsrc*) ;
 int INTEL_DATA (struct msi_intsrc*) ;
 int first_msi_irq ;
 scalar_t__ intr_lookup_source (int) ;
 int iommu_map_msi_intr (int *,int ,int ,int ,int *,int *) ;
 int msi_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int num_msi_irqs ;

int
msi_map(int irq, uint64_t *addr, uint32_t *data)
{
 struct msi_intsrc *msi;
 int error;





 mtx_lock(&msi_lock);
 msi = (struct msi_intsrc *)intr_lookup_source(irq);
 if (msi == ((void*)0)) {
  mtx_unlock(&msi_lock);
  return (ENOENT);
 }


 if (msi->msi_dev == ((void*)0)) {
  mtx_unlock(&msi_lock);
  return (ENXIO);
 }






 if (!msi->msi_msix) {
  if (msi->msi_first == ((void*)0)) {
   mtx_unlock(&msi_lock);
   return (ENXIO);
  }
  msi = msi->msi_first;
 }
 mtx_unlock(&msi_lock);
 error = EOPNOTSUPP;

 if (error == EOPNOTSUPP) {
  *addr = INTEL_ADDR(msi);
  *data = INTEL_DATA(msi);
  error = 0;
 }
 return (error);
}
