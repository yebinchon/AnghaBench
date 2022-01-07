
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_intsrc {scalar_t__ msi_maxcount; scalar_t__ msi_count; scalar_t__ msi_msix; scalar_t__ msi_vector; int msi_irq; int msi_cpu; int * msi_dev; int * msi_first; int msi_remap_cookie; } ;


 int EINVAL ;
 int ENOENT ;
 int KASSERT (int ,char*) ;
 int apic_free_vector (int ,scalar_t__,int ) ;
 scalar_t__ intr_lookup_source (int) ;
 int iommu_unmap_msi_intr (int *,int ) ;
 int msi_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
msix_release(int irq)
{
 struct msi_intsrc *msi;

 mtx_lock(&msi_lock);
 msi = (struct msi_intsrc *)intr_lookup_source(irq);
 if (msi == ((void*)0)) {
  mtx_unlock(&msi_lock);
  return (ENOENT);
 }


 if (!msi->msi_msix) {
  mtx_unlock(&msi_lock);
  return (EINVAL);
 }

 KASSERT(msi->msi_dev != ((void*)0), ("unowned message"));







 msi->msi_first = ((void*)0);
 msi->msi_dev = ((void*)0);
 apic_free_vector(msi->msi_cpu, msi->msi_vector, msi->msi_irq);
 msi->msi_vector = 0;
 msi->msi_msix = 0;
 msi->msi_count = 0;
 msi->msi_maxcount = 0;

 mtx_unlock(&msi_lock);
 return (0);
}
