
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dma_vaddr; } ;
struct vmci_softc {int vmci_spinlock; TYPE_1__ vmci_notifications_bitmap; int vmci_ioh0; int vmci_iot0; int * vmci_res0; int vmci_delayed_work_lock; int vmci_delayed_work_task; } ;
typedef int device_t ;


 int VMCI_CONTROL_ADDR ;
 int VMCI_CONTROL_RESET ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 struct vmci_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int pci_disable_busmaster (int ) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_thread ;
 int vmci_components_cleanup () ;
 int vmci_dismantle_interrupts (struct vmci_softc*) ;
 int vmci_dma_free (TYPE_1__*) ;
 int vmci_qp_guest_endpoints_exit () ;
 int vmci_unmap_bars (struct vmci_softc*) ;
 int vmci_util_exit () ;

__attribute__((used)) static int
vmci_detach(device_t dev)
{
 struct vmci_softc *sc;

 sc = device_get_softc(dev);

 vmci_qp_guest_endpoints_exit();
 vmci_util_exit();

 vmci_dismantle_interrupts(sc);

 vmci_components_cleanup();

 taskqueue_drain(taskqueue_thread, &sc->vmci_delayed_work_task);
 mtx_destroy(&sc->vmci_delayed_work_lock);

 if (sc->vmci_res0 != ((void*)0))
  bus_space_write_4(sc->vmci_iot0, sc->vmci_ioh0,
      VMCI_CONTROL_ADDR, VMCI_CONTROL_RESET);

 if (sc->vmci_notifications_bitmap.dma_vaddr != ((void*)0))
  vmci_dma_free(&sc->vmci_notifications_bitmap);

 vmci_unmap_bars(sc);

 mtx_destroy(&sc->vmci_spinlock);

 pci_disable_busmaster(dev);

 return (0);
}
