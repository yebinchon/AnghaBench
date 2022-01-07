
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int ;
struct TYPE_2__ {scalar_t__ is_handlers; } ;
struct msi_intsrc {int msi_cpu; int msi_vector; int msi_irq; int msi_count; int msi_maxcount; void** msi_irqs; TYPE_1__ msi_intsrc; struct msi_intsrc* msi_first; int * msi_dev; void* msi_remap_cookie; } ;
typedef int * device_t ;


 int ENOSPC ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int KASSERT (int,char*) ;
 int M_MSI ;
 int M_WAITOK ;
 int apic_alloc_vectors (void*,int*,int,int) ;
 int apic_free_vector (void*,int,int) ;
 int bcopy (int*,void**,int) ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_get_domain (int *,void**) ;
 int first_msi_irq ;
 int free (void**,int ) ;
 scalar_t__ intr_lookup_source (int) ;
 void* intr_next_cpu (void*) ;
 int iommu_alloc_msi_intr (int *,void**,int) ;
 void** malloc (int,int ,int ) ;
 int msi_create_source () ;
 int msi_enabled ;
 int msi_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int num_msi_irqs ;
 int printf (char*,int,int,int) ;

int
msi_alloc(device_t dev, int count, int maxcount, int *irqs)
{
 struct msi_intsrc *msi, *fsrc;
 u_int cpu, domain, *mirqs;
 int cnt, i, vector;





 if (!msi_enabled)
  return (ENXIO);

 if (bus_get_domain(dev, &domain) != 0)
  domain = 0;

 if (count > 1)
  mirqs = malloc(count * sizeof(*mirqs), M_MSI, M_WAITOK);
 else
  mirqs = ((void*)0);
again:
 mtx_lock(&msi_lock);


 cnt = 0;
 for (i = first_msi_irq; i < first_msi_irq + num_msi_irqs; i++) {
  msi = (struct msi_intsrc *)intr_lookup_source(i);


  if (msi == ((void*)0))
   break;


  if (msi->msi_dev == ((void*)0)) {
   irqs[cnt] = i;
   cnt++;
   if (cnt == count)
    break;
  }
 }


 if (cnt < count) {

  if (i + (count - cnt) > first_msi_irq + num_msi_irqs) {
   mtx_unlock(&msi_lock);
   free(mirqs, M_MSI);
   return (ENXIO);
  }
  mtx_unlock(&msi_lock);


  while (cnt < count) {
   msi_create_source();
   cnt++;
  }
  goto again;
 }


 KASSERT(cnt == count, ("count mismatch"));


 cpu = intr_next_cpu(domain);
 vector = apic_alloc_vectors(cpu, irqs, count, maxcount);
 if (vector == 0) {
  mtx_unlock(&msi_lock);
  free(mirqs, M_MSI);
  return (ENOSPC);
 }
 fsrc = (struct msi_intsrc *)intr_lookup_source(irqs[0]);
 for (i = 0; i < count; i++) {
  msi = (struct msi_intsrc *)intr_lookup_source(irqs[i]);
  msi->msi_cpu = cpu;
  msi->msi_dev = dev;
  msi->msi_vector = vector + i;
  if (bootverbose)
   printf(
      "msi: routing MSI IRQ %d to local APIC %u vector %u\n",
       msi->msi_irq, msi->msi_cpu, msi->msi_vector);
  msi->msi_first = fsrc;
  KASSERT(msi->msi_intsrc.is_handlers == 0,
      ("dead MSI has handlers"));
 }
 fsrc->msi_count = count;
 fsrc->msi_maxcount = maxcount;
 if (count > 1)
  bcopy(irqs, mirqs, count * sizeof(*mirqs));
 fsrc->msi_irqs = mirqs;
 mtx_unlock(&msi_lock);
 return (0);
}
