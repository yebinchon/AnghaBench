
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* soft_reset ) (struct octeon_device*) ;int (* disable_interrupt ) (struct octeon_device*,int ) ;int (* disable_io_queues ) (struct octeon_device*) ;} ;
struct TYPE_5__ {int oq; int iq; } ;
struct octeon_device {int device; TYPE_3__ fn_list; int ** instr_queue; TYPE_2__ io_qmask; int ** droq; int * msix_res; int aux_vector; int * tag; TYPE_1__* ioq_vector; int num_msix_irqs; int msix_on; int status; int app_mode; } ;
struct TYPE_4__ {int * msix_res; int vector; int * tag; } ;


 int BIT_ULL (int) ;
 int LIO_DRV_INVALID_APP ;
 int LIO_MAX_INSTR_QUEUES (struct octeon_device*) ;
 int LIO_MAX_OUTPUT_QUEUES (struct octeon_device*) ;
 int LIO_MAX_POSSIBLE_INSTR_QUEUES ;
 int LIO_MAX_POSSIBLE_OUTPUT_QUEUES ;
 int M_DEVBUF ;
 int OCTEON_ALL_INTR ;
 int SYS_RES_IRQ ;
 int atomic_load_acq_int (int *) ;
 int atomic_store_rel_int (int *,int) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int free (int *,int ) ;
 int fw_type_is_none () ;
 int lio_delete_dispatch_list (struct octeon_device*) ;
 int lio_delete_droq (struct octeon_device*,int) ;
 int lio_delete_instr_queue (struct octeon_device*,int) ;
 int lio_delete_response_list (struct octeon_device*) ;
 int lio_deregister_device (struct octeon_device*) ;
 int lio_dev_dbg (struct octeon_device*,char*,int ) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_free_ioq_vector (struct octeon_device*) ;
 int lio_free_sc_buffer_pool (struct octeon_device*) ;
 int lio_get_state_string (int *) ;
 int lio_mdelay (int) ;
 int lio_pci_flr (struct octeon_device*) ;
 int lio_remove_consoles (struct octeon_device*) ;
 int lio_sleep_timeout (int) ;
 int lio_unmap_pci_barx (struct octeon_device*,int) ;
 int lio_wait_for_instr_fetch (struct octeon_device*) ;
 int lio_wait_for_oq_pkts (struct octeon_device*) ;
 int lio_wait_for_pending_requests (struct octeon_device*) ;
 int pci_disable_busmaster (int ) ;
 int pci_release_msi (int ) ;
 int stub1 (struct octeon_device*) ;
 int stub2 (struct octeon_device*,int ) ;
 int stub3 (struct octeon_device*) ;

__attribute__((used)) static void
lio_destroy_resources(struct octeon_device *oct)
{
 int i, refcount;

 switch (atomic_load_acq_int(&oct->status)) {
 case 129:
 case 141:

  atomic_store_rel_int(&oct->status, 135);

  oct->app_mode = LIO_DRV_INVALID_APP;
  lio_dev_dbg(oct, "Device state is now %s\n",
       lio_get_state_string(&oct->status));

  lio_sleep_timeout(100);


 case 138:


 case 142:

  lio_remove_consoles(oct);


 case 134:
  if (lio_wait_for_pending_requests(oct))
   lio_dev_err(oct, "There were pending requests\n");

  if (lio_wait_for_instr_fetch(oct))
   lio_dev_err(oct, "IQ had pending instructions\n");






  oct->fn_list.disable_io_queues(oct);

  if (lio_wait_for_oq_pkts(oct))
   lio_dev_err(oct, "OQ had pending packets\n");


 case 136:

  oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

  if (oct->msix_on) {
   for (i = 0; i < oct->num_msix_irqs - 1; i++) {
    if (oct->ioq_vector[i].tag != ((void*)0)) {
     bus_teardown_intr(oct->device,
        oct->ioq_vector[i].msix_res,
            oct->ioq_vector[i].tag);
     oct->ioq_vector[i].tag = ((void*)0);
    }
    if (oct->ioq_vector[i].msix_res != ((void*)0)) {
     bus_release_resource(oct->device,
      SYS_RES_IRQ,
      oct->ioq_vector[i].vector,
      oct->ioq_vector[i].msix_res);
     oct->ioq_vector[i].msix_res = ((void*)0);
    }
   }

   if (oct->tag != ((void*)0)) {
    bus_teardown_intr(oct->device, oct->msix_res,
        oct->tag);
    oct->tag = ((void*)0);
   }

   if (oct->msix_res != ((void*)0)) {
    bus_release_resource(oct->device, SYS_RES_IRQ,
           oct->aux_vector,
           oct->msix_res);
    oct->msix_res = ((void*)0);
   }

   pci_release_msi(oct->device);
  }

 case 135:
 case 139:

  lio_mdelay(100);
  for (i = 0; i < LIO_MAX_OUTPUT_QUEUES(oct); i++) {
   if (!(oct->io_qmask.oq & BIT_ULL(i)))
    continue;
   lio_delete_droq(oct, i);
  }


 case 130:
  for (i = 0; i < LIO_MAX_POSSIBLE_OUTPUT_QUEUES; i++) {
   if (oct->droq[i] != ((void*)0)) {
    free(oct->droq[i], M_DEVBUF);
    oct->droq[i] = ((void*)0);
   }
  }
  lio_delete_response_list(oct);


 case 137:
  for (i = 0; i < LIO_MAX_INSTR_QUEUES(oct); i++) {
   if (!(oct->io_qmask.iq & BIT_ULL(i)))
    continue;

   lio_delete_instr_queue(oct, i);
  }


 case 133:
  for (i = 0; i < LIO_MAX_POSSIBLE_INSTR_QUEUES; i++) {
   if (oct->instr_queue[i] != ((void*)0)) {
    free(oct->instr_queue[i], M_DEVBUF);
    oct->instr_queue[i] = ((void*)0);
   }
  }
  lio_free_ioq_vector(oct);


 case 128:
  lio_free_sc_buffer_pool(oct);


 case 140:
  lio_delete_dispatch_list(oct);


 case 131:
  refcount = lio_deregister_device(oct);

  if (fw_type_is_none())
   lio_pci_flr(oct);

  if (!refcount)
   oct->fn_list.soft_reset(oct);

  lio_unmap_pci_barx(oct, 0);
  lio_unmap_pci_barx(oct, 1);


 case 132:

  pci_disable_busmaster(oct->device);


 case 143:
  break;
 }
}
