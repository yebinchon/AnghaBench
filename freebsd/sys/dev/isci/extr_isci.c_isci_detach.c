
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_softc {int controller_count; int num_interrupts; struct ISCI_INTERRUPT_INFO* interrupt_info; struct ISCI_PCI_BAR* pci_bar; int * sci_library_memory; struct ISCI_CONTROLLER* controllers; } ;
struct ISCI_PCI_BAR {int * resource; int resource_id; } ;
struct ISCI_INTERRUPT_INFO {int * res; int * tag; } ;
struct ISCI_CONTROLLER {scalar_t__ is_started; int unmap_buffer_pool; TYPE_1__* phys; int * remote_device_memory; int * timer_memory; int lock; int * sim; int path; int * scif_controller_handle; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ cdev_locate; scalar_t__ cdev_fault; } ;
typedef int SCI_STATUS ;


 struct isci_softc* DEVICE2SOFTC (int ) ;
 int ISCI_NUM_PCI_BARS ;
 int M_ISCI ;
 int PAGE_SIZE ;
 int SCI_MAX_PHYS ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ TRUE ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int cam_sim_free (int *,scalar_t__) ;
 int cam_sim_path (int *) ;
 int contigfree (void*,int ,int ) ;
 int free (int *,int ) ;
 int isci_interrupt_poll_handler (struct ISCI_CONTROLLER*) ;
 int led_destroy (scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pause (char*,int) ;
 int pci_disable_busmaster (int ) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;
 int sci_pool_get (int ,void*) ;
 int scic_controller_disable_interrupts (int ) ;
 int scif_controller_get_scic_handle (int *) ;
 int scif_controller_stop (int *,int ) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static int
isci_detach(device_t device)
{
 struct isci_softc *isci = DEVICE2SOFTC(device);
 int i, phy;

 for (i = 0; i < isci->controller_count; i++) {
  struct ISCI_CONTROLLER *controller = &isci->controllers[i];
  SCI_STATUS status;
  void *unmap_buffer;

  if (controller->scif_controller_handle != ((void*)0)) {
   scic_controller_disable_interrupts(
       scif_controller_get_scic_handle(controller->scif_controller_handle));

   mtx_lock(&controller->lock);
   status = scif_controller_stop(controller->scif_controller_handle, 0);
   mtx_unlock(&controller->lock);

   while (controller->is_started == TRUE) {



    mtx_lock(&controller->lock);
    isci_interrupt_poll_handler(controller);
    mtx_unlock(&controller->lock);
    pause("isci", 1);
   }

   if(controller->sim != ((void*)0)) {
    mtx_lock(&controller->lock);
    xpt_free_path(controller->path);
    xpt_bus_deregister(cam_sim_path(controller->sim));
    cam_sim_free(controller->sim, TRUE);
    mtx_unlock(&controller->lock);
   }
  }

  if (controller->timer_memory != ((void*)0))
   free(controller->timer_memory, M_ISCI);

  if (controller->remote_device_memory != ((void*)0))
   free(controller->remote_device_memory, M_ISCI);

  for (phy = 0; phy < SCI_MAX_PHYS; phy++) {
   if (controller->phys[phy].cdev_fault)
    led_destroy(controller->phys[phy].cdev_fault);

   if (controller->phys[phy].cdev_locate)
    led_destroy(controller->phys[phy].cdev_locate);
  }

  while (1) {
   sci_pool_get(controller->unmap_buffer_pool, unmap_buffer);
   if (unmap_buffer == ((void*)0))
    break;
   contigfree(unmap_buffer, PAGE_SIZE, M_ISCI);
  }
 }




 if (isci->sci_library_memory != ((void*)0))
  free(isci->sci_library_memory, M_ISCI);

 for (i = 0; i < ISCI_NUM_PCI_BARS; i++)
 {
  struct ISCI_PCI_BAR *pci_bar = &isci->pci_bar[i];

  if (pci_bar->resource != ((void*)0))
   bus_release_resource(device, SYS_RES_MEMORY,
       pci_bar->resource_id, pci_bar->resource);
 }

 for (i = 0; i < isci->num_interrupts; i++)
 {
  struct ISCI_INTERRUPT_INFO *interrupt_info;

  interrupt_info = &isci->interrupt_info[i];

  if(interrupt_info->tag != ((void*)0))
   bus_teardown_intr(device, interrupt_info->res,
       interrupt_info->tag);

  if(interrupt_info->res != ((void*)0))
   bus_release_resource(device, SYS_RES_IRQ,
       rman_get_rid(interrupt_info->res),
       interrupt_info->res);

  pci_release_msi(device);
 }
 pci_disable_busmaster(device);

 return (0);
}
