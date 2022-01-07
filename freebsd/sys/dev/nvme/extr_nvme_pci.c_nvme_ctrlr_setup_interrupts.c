
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int msix_enabled; int num_io_queues; int dev; } ;
typedef int device_t ;


 int TUNABLE_INT_FETCH (char*,int*) ;
 int max (int,int) ;
 int min (int,int) ;
 int mp_ncpus ;
 int nvme_ctrlr_configure_intx (struct nvme_controller*) ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_msix_count (int ) ;
 int pci_release_msi (int ) ;
 int smp_threads_per_core ;
 int vm_ndomains ;

__attribute__((used)) static void
nvme_ctrlr_setup_interrupts(struct nvme_controller *ctrlr)
{
 device_t dev;
 int force_intx, num_io_queues, per_cpu_io_queues;
 int min_cpus_per_ioq;
 int num_vectors_requested, num_vectors_allocated;

 dev = ctrlr->dev;

 force_intx = 0;
 TUNABLE_INT_FETCH("hw.nvme.force_intx", &force_intx);
 if (force_intx || pci_msix_count(dev) < 2) {
  nvme_ctrlr_configure_intx(ctrlr);
  return;
 }

 num_io_queues = mp_ncpus;
 TUNABLE_INT_FETCH("hw.nvme.num_io_queues", &num_io_queues);
 if (num_io_queues < 1 || num_io_queues > mp_ncpus)
  num_io_queues = mp_ncpus;

 per_cpu_io_queues = 1;
 TUNABLE_INT_FETCH("hw.nvme.per_cpu_io_queues", &per_cpu_io_queues);
 if (per_cpu_io_queues == 0)
  num_io_queues = 1;

 min_cpus_per_ioq = smp_threads_per_core;
 TUNABLE_INT_FETCH("hw.nvme.min_cpus_per_ioq", &min_cpus_per_ioq);
 if (min_cpus_per_ioq > 1) {
  num_io_queues = min(num_io_queues,
      max(1, mp_ncpus / min_cpus_per_ioq));
 }

 num_io_queues = min(num_io_queues, pci_msix_count(dev) - 1);

again:
 if (num_io_queues > vm_ndomains)
  num_io_queues -= num_io_queues % vm_ndomains;

 num_vectors_requested = num_io_queues + 1;
 num_vectors_allocated = num_vectors_requested;
 if (pci_alloc_msix(dev, &num_vectors_allocated) != 0) {
  nvme_ctrlr_configure_intx(ctrlr);
  return;
 }
 if (num_vectors_allocated < 2) {
  pci_release_msi(dev);
  nvme_ctrlr_configure_intx(ctrlr);
  return;
 }
 if (num_vectors_allocated != num_vectors_requested) {
  pci_release_msi(dev);
  num_io_queues = num_vectors_allocated - 1;
  goto again;
 }

 ctrlr->msix_enabled = 1;
 ctrlr->num_io_queues = num_io_queues;
}
