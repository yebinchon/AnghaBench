
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_intsrc {int msi_count; int * msi_irqs; scalar_t__ msi_maxcount; scalar_t__ msi_vector; int msi_irq; int msi_cpu; int * msi_dev; struct msi_intsrc* msi_first; int msi_remap_cookie; scalar_t__ msi_msix; } ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int M_MSI ;
 int apic_free_vector (int ,scalar_t__,int ) ;
 int free (int *,int ) ;
 scalar_t__ intr_lookup_source (int) ;
 int iommu_unmap_msi_intr (int *,int ) ;
 int msi_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
msi_release(int *irqs, int count)
{
 struct msi_intsrc *msi, *first;
 int i;

 mtx_lock(&msi_lock);
 first = (struct msi_intsrc *)intr_lookup_source(irqs[0]);
 if (first == ((void*)0)) {
  mtx_unlock(&msi_lock);
  return (ENOENT);
 }


 if (first->msi_msix) {
  mtx_unlock(&msi_lock);
  return (EINVAL);
 }


 if (first->msi_first == ((void*)0)) {
  mtx_unlock(&msi_lock);
  return (ENXIO);
 }





 if (first->msi_first != first || first->msi_count != count) {
  mtx_unlock(&msi_lock);
  return (EINVAL);
 }
 KASSERT(first->msi_dev != ((void*)0), ("unowned group"));


 for (i = 1; i < count; i++) {
  msi = (struct msi_intsrc *)intr_lookup_source(irqs[i]);
  KASSERT(msi->msi_first == first, ("message not in group"));
  KASSERT(msi->msi_dev == first->msi_dev, ("owner mismatch"));



  msi->msi_first = ((void*)0);
  msi->msi_dev = ((void*)0);
  apic_free_vector(msi->msi_cpu, msi->msi_vector, msi->msi_irq);
  msi->msi_vector = 0;
 }







 first->msi_first = ((void*)0);
 first->msi_dev = ((void*)0);
 apic_free_vector(first->msi_cpu, first->msi_vector, first->msi_irq);
 first->msi_vector = 0;
 first->msi_count = 0;
 first->msi_maxcount = 0;
 free(first->msi_irqs, M_MSI);
 first->msi_irqs = ((void*)0);

 mtx_unlock(&msi_lock);
 return (0);
}
