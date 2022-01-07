
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_softc {scalar_t__ type; int db_mask_lock; int device; int peer_msix_work; int lr_timer; int heartbeat_timer; int db_valid_mask; TYPE_1__* self_reg; } ;
typedef int device_t ;
struct TYPE_2__ {int db_mask; } ;


 int DB_MASK_LOCK (struct ntb_softc*) ;
 int DB_MASK_UNLOCK (struct ntb_softc*) ;
 scalar_t__ NTB_XEON ;
 int callout_drain (int *) ;
 int db_iowrite (struct ntb_softc*,int ,int ) ;
 struct ntb_softc* device_get_softc (int ) ;
 int intel_ntb_teardown_interrupts (struct ntb_softc*) ;
 int intel_ntb_teardown_xeon (struct ntb_softc*) ;
 int intel_ntb_unmap_pci_bar (struct ntb_softc*) ;
 int mtx_destroy (int *) ;
 int ntb_unregister_device (int ) ;
 int pci_disable_busmaster (int ) ;

__attribute__((used)) static int
intel_ntb_detach(device_t device)
{
 struct ntb_softc *ntb;

 ntb = device_get_softc(device);


 ntb_unregister_device(device);

 if (ntb->self_reg != ((void*)0)) {
  DB_MASK_LOCK(ntb);
  db_iowrite(ntb, ntb->self_reg->db_mask, ntb->db_valid_mask);
  DB_MASK_UNLOCK(ntb);
 }
 callout_drain(&ntb->heartbeat_timer);
 callout_drain(&ntb->lr_timer);
 callout_drain(&ntb->peer_msix_work);
 pci_disable_busmaster(ntb->device);
 if (ntb->type == NTB_XEON)
  intel_ntb_teardown_xeon(ntb);
 intel_ntb_teardown_interrupts(ntb);

 mtx_destroy(&ntb->db_mask_lock);

 intel_ntb_unmap_pci_bar(ntb);

 return (0);
}
