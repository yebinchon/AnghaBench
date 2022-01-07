
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int domain; int ready_substate_machine; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 int sci_base_state_machine_start (int *) ;
 int scif_sas_domain_remote_device_start_complete (int ,TYPE_1__*) ;

__attribute__((used)) static
void scif_sas_remote_device_ready_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;


   sci_base_state_machine_start(&fw_device->ready_substate_machine);




}
