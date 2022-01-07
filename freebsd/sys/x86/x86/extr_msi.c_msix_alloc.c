
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {scalar_t__ is_handlers; } ;
struct msi_intsrc {int msi_remap_cookie; int msi_irq; int msi_cpu; int msi_vector; int msi_msix; int msi_count; int msi_maxcount; TYPE_1__ msi_intsrc; int * msi_irqs; struct msi_intsrc* msi_first; int * msi_dev; } ;
typedef int * device_t ;


 int ENOSPC ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int KASSERT (int,char*) ;
 int apic_alloc_vector (int,int) ;
 int apic_free_vector (int,int,int) ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_get_domain (int *,int*) ;
 int first_msi_irq ;
 scalar_t__ intr_lookup_source (int) ;
 int intr_next_cpu (int) ;
 int iommu_alloc_msi_intr (int *,int*,int) ;
 int msi_create_source () ;
 int msi_enabled ;
 int msi_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int num_msi_irqs ;
 int printf (char*,int,int,int) ;

int
msix_alloc(device_t dev, int *irq)
{
 struct msi_intsrc *msi;
 u_int cpu, domain;
 int i, vector;





 if (!msi_enabled)
  return (ENXIO);

 if (bus_get_domain(dev, &domain) != 0)
  domain = 0;

again:
 mtx_lock(&msi_lock);


 for (i = first_msi_irq; i < first_msi_irq + num_msi_irqs; i++) {
  msi = (struct msi_intsrc *)intr_lookup_source(i);


  if (msi == ((void*)0))
   break;


  if (msi->msi_dev == ((void*)0))
   break;
 }


 if (i == first_msi_irq + num_msi_irqs) {
  mtx_unlock(&msi_lock);
  return (ENXIO);
 }


 if (msi == ((void*)0)) {
  mtx_unlock(&msi_lock);


  msi_create_source();
  goto again;
 }


 cpu = intr_next_cpu(domain);
 vector = apic_alloc_vector(cpu, i);
 if (vector == 0) {
  mtx_unlock(&msi_lock);
  return (ENOSPC);
 }

 msi->msi_dev = dev;
 if (bootverbose)
  printf("msi: routing MSI-X IRQ %d to local APIC %u vector %u\n",
      msi->msi_irq, cpu, vector);


 msi->msi_cpu = cpu;
 msi->msi_first = msi;
 msi->msi_vector = vector;
 msi->msi_msix = 1;
 msi->msi_count = 1;
 msi->msi_maxcount = 1;
 msi->msi_irqs = ((void*)0);

 KASSERT(msi->msi_intsrc.is_handlers == 0, ("dead MSI-X has handlers"));
 mtx_unlock(&msi_lock);

 *irq = i;
 return (0);
}
