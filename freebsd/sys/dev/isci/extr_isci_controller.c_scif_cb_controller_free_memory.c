
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ISCI_CONTROLLER {int unmap_buffer_pool; } ;
struct TYPE_3__ {int virtual_address; } ;
typedef TYPE_1__ SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 scalar_t__ sci_object_get_association (int ) ;
 int sci_pool_put (int ,int ) ;

void scif_cb_controller_free_memory(SCI_CONTROLLER_HANDLE_T controller,
    SCI_PHYSICAL_MEMORY_DESCRIPTOR_T * mde)
{
 struct ISCI_CONTROLLER *isci_controller = (struct ISCI_CONTROLLER *)
     sci_object_get_association(controller);






 sci_pool_put(isci_controller->unmap_buffer_pool,
     mde->virtual_address);
}
