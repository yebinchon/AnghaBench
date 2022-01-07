
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ is_handlers; } ;
struct msi_intsrc {scalar_t__ msi_msix; int msi_vector; scalar_t__ msi_cpu; int msi_count; int* msi_irqs; int msi_irq; TYPE_1__ msi_intsrc; int msi_dev; int msi_maxcount; struct msi_intsrc* msi_first; } ;
struct intsrc {int dummy; } ;


 int BUS_REMAP_INTR (int ,int ,int) ;
 int EINVAL ;
 int ENOSPC ;
 int KASSERT (int,char*) ;
 int apic_alloc_vector (scalar_t__,int) ;
 int apic_alloc_vectors (scalar_t__,int*,int,int ) ;
 int apic_disable_vector (scalar_t__,int) ;
 int apic_enable_vector (scalar_t__,int) ;
 int apic_free_vector (scalar_t__,int,int) ;
 scalar_t__ bootverbose ;
 int device_get_parent (int ) ;
 scalar_t__ intr_lookup_source (int) ;
 scalar_t__ msix_disable_migration ;
 int printf (char*,...) ;

__attribute__((used)) static int
msi_assign_cpu(struct intsrc *isrc, u_int apic_id)
{
 struct msi_intsrc *sib, *msi = (struct msi_intsrc *)isrc;
 int old_vector;
 u_int old_id;
 int i, vector;





 if (msi->msi_first != msi)
  return (EINVAL);







 old_vector = msi->msi_vector;
 old_id = msi->msi_cpu;
 if (old_id == apic_id)
  return (0);


 if (msi->msi_count > 1) {
  KASSERT(msi->msi_msix == 0, ("MSI-X message group"));
  vector = apic_alloc_vectors(apic_id, msi->msi_irqs,
      msi->msi_count, msi->msi_maxcount);
 } else
  vector = apic_alloc_vector(apic_id, msi->msi_irq);
 if (vector == 0)
  return (ENOSPC);

 msi->msi_cpu = apic_id;
 msi->msi_vector = vector;
 if (msi->msi_intsrc.is_handlers > 0)
  apic_enable_vector(msi->msi_cpu, msi->msi_vector);
 if (bootverbose)
  printf("msi: Assigning %s IRQ %d to local APIC %u vector %u\n",
      msi->msi_msix ? "MSI-X" : "MSI", msi->msi_irq,
      msi->msi_cpu, msi->msi_vector);
 for (i = 1; i < msi->msi_count; i++) {
  sib = (struct msi_intsrc *)intr_lookup_source(msi->msi_irqs[i]);
  sib->msi_cpu = apic_id;
  sib->msi_vector = vector + i;
  if (sib->msi_intsrc.is_handlers > 0)
   apic_enable_vector(sib->msi_cpu, sib->msi_vector);
  if (bootverbose)
   printf(
      "msi: Assigning MSI IRQ %d to local APIC %u vector %u\n",
       sib->msi_irq, sib->msi_cpu, sib->msi_vector);
 }
 BUS_REMAP_INTR(device_get_parent(msi->msi_dev), msi->msi_dev,
     msi->msi_irq);





 if (msi->msi_intsrc.is_handlers > 0)
  apic_disable_vector(old_id, old_vector);
 apic_free_vector(old_id, old_vector, msi->msi_irq);
 for (i = 1; i < msi->msi_count; i++) {
  sib = (struct msi_intsrc *)intr_lookup_source(msi->msi_irqs[i]);
  if (sib->msi_intsrc.is_handlers > 0)
   apic_disable_vector(old_id, old_vector + i);
  apic_free_vector(old_id, old_vector + i, msi->msi_irqs[i]);
 }
 return (0);
}
