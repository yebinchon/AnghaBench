
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_pf_rings; } ;
struct octeon_device {int num_msix_irqs; int vector; int aux_vector; int * msix_res; int * tag; int affinity_mask; int device; TYPE_1__ sriov_info; struct octeon_device* ioq_vector; int msix_on; } ;
struct lio_ioq_vector {int num_msix_irqs; int vector; int aux_vector; int * msix_res; int * tag; int affinity_mask; int device; TYPE_1__ sriov_info; struct lio_ioq_vector* ioq_vector; int msix_on; } ;
typedef int device_t ;


 int CPU_SETOF (int,int *) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_bind_intr (int ,int *,int) ;
 int bus_describe_intr (int ,int *,int *,char*,...) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct octeon_device*,int **) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int lio_dev_dbg (struct octeon_device*,char*,...) ;
 int lio_dev_err (struct octeon_device*,char*,...) ;
 int lio_dev_info (struct octeon_device*,char*,int,int) ;
 int lio_intr_handler ;
 int lio_msix_intr_handler ;
 int mp_ncpus ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_release_msi (int ) ;
 int rss_getcpu (int) ;
 int rss_getnumbuckets () ;

int
lio_setup_interrupt(struct octeon_device *oct, uint32_t num_ioqs)
{
 device_t device;
 struct lio_ioq_vector *ioq_vector;
 int cpu_id, err, i;
 int num_alloc_ioq_vectors;
 int num_ioq_vectors;
 int res_id;

 if (!oct->msix_on)
  return (1);

 ioq_vector = oct->ioq_vector;
 device = oct->device;

 oct->num_msix_irqs = num_ioqs;

 oct->num_msix_irqs += 1;
 num_alloc_ioq_vectors = oct->num_msix_irqs;

 if (pci_alloc_msix(device, &num_alloc_ioq_vectors) ||
     (num_alloc_ioq_vectors != oct->num_msix_irqs))
  goto err;

 num_ioq_vectors = oct->num_msix_irqs;


 for (i = 0; i < num_ioq_vectors - 1; i++, ioq_vector++) {
  res_id = i + 1;

  ioq_vector->msix_res =
      bus_alloc_resource_any(device, SYS_RES_IRQ, &res_id,
        RF_SHAREABLE | RF_ACTIVE);
  if (ioq_vector->msix_res == ((void*)0)) {
   lio_dev_err(oct,
        "Unable to allocate bus res msix[%d]\n", i);
   goto err_1;
  }

  err = bus_setup_intr(device, ioq_vector->msix_res,
         INTR_TYPE_NET | INTR_MPSAFE, ((void*)0),
         lio_msix_intr_handler, ioq_vector,
         &ioq_vector->tag);
  if (err) {
   bus_release_resource(device, SYS_RES_IRQ, res_id,
          ioq_vector->msix_res);
   ioq_vector->msix_res = ((void*)0);
   lio_dev_err(oct, "Failed to register intr handler");
   goto err_1;
  }

  bus_describe_intr(device, ioq_vector->msix_res, ioq_vector->tag,
      "rxtx%u", i);
  ioq_vector->vector = res_id;




  cpu_id = i % mp_ncpus;

  CPU_SETOF(cpu_id, &ioq_vector->affinity_mask);


  err = bus_bind_intr(device, ioq_vector->msix_res, cpu_id);
  if (err)
   lio_dev_err(oct, "bus bind interrupt fail");



  lio_dev_dbg(oct, "Bound Queue %d to CPU %d\n", i, cpu_id);

 }

 lio_dev_dbg(oct, "MSI-X enabled\n");

 res_id = num_ioq_vectors;
 oct->msix_res = bus_alloc_resource_any(device, SYS_RES_IRQ, &res_id,
            RF_SHAREABLE | RF_ACTIVE);
 if (oct->msix_res == ((void*)0)) {
  lio_dev_err(oct, "Unable to allocate bus res msix for non-ioq interrupt\n");
  goto err_1;
 }

 err = bus_setup_intr(device, oct->msix_res, INTR_TYPE_NET | INTR_MPSAFE,
        ((void*)0), lio_intr_handler, oct, &oct->tag);
 if (err) {
  bus_release_resource(device, SYS_RES_IRQ, res_id,
         oct->msix_res);
  oct->msix_res = ((void*)0);
  lio_dev_err(oct, "Failed to register intr handler");
  goto err_1;
 }

 bus_describe_intr(device, oct->msix_res, oct->tag, "aux");
 oct->aux_vector = res_id;

 return (0);
err_1:
 if (oct->tag != ((void*)0)) {
  bus_teardown_intr(device, oct->msix_res, oct->tag);
  oct->tag = ((void*)0);
 }

 while (i) {
  i--;
  ioq_vector--;

  if (ioq_vector->tag != ((void*)0)) {
   bus_teardown_intr(device, ioq_vector->msix_res,
       ioq_vector->tag);
   ioq_vector->tag = ((void*)0);
  }

  if (ioq_vector->msix_res != ((void*)0)) {
   bus_release_resource(device, SYS_RES_IRQ,
          ioq_vector->vector,
          ioq_vector->msix_res);
   ioq_vector->msix_res = ((void*)0);
  }
 }

 if (oct->msix_res != ((void*)0)) {
  bus_release_resource(device, SYS_RES_IRQ, oct->aux_vector,
         oct->msix_res);
  oct->msix_res = ((void*)0);
 }
err:
 pci_release_msi(device);
 lio_dev_err(oct, "MSI-X disabled\n");
 return (1);
}
