
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t U8 ;
typedef size_t U16 ;
struct TYPE_11__ {int list_element; } ;
struct TYPE_10__ {int lock; } ;
struct TYPE_9__ {TYPE_2__ hprq; int internal_request_entries; TYPE_6__* smp_phy_array; int smp_phy_memory_list; int * domains; int remote_device_pool_elements; int free_remote_device_pool; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_SAS_MAX_INTERNAL_REQUEST_COUNT ;
 size_t SCIF_SAS_SMP_PHY_COUNT ;
 int SCI_BASE_CONTROLLER_STATE_RESET ;
 size_t SCI_MAX_DOMAINS ;
 int SCI_MAX_REMOTE_DEVICES ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 int sci_abstract_element_pool_construct (int *,int ,int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_fast_list_element_init (TYPE_6__*,int *) ;
 int sci_fast_list_init (int *) ;
 int sci_fast_list_insert_tail (int *,int *) ;
 int scif_cb_lock_disassociate (TYPE_1__*,int *) ;
 int scif_sas_controller_set_default_config_parameters (TYPE_1__*) ;
 int scif_sas_controller_state_handler_table ;
 int scif_sas_domain_construct (int *,size_t,TYPE_1__*) ;
 int scif_sas_high_priority_request_queue_construct (TYPE_2__*,int ) ;

__attribute__((used)) static
void scif_sas_controller_reset_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)object;
   U8 index;
   U16 smp_phy_index;

   SET_STATE_HANDLER(
      fw_controller,
      scif_sas_controller_state_handler_table,
      SCI_BASE_CONTROLLER_STATE_RESET
   );

   scif_sas_high_priority_request_queue_construct(
      &fw_controller->hprq, sci_base_object_get_logger(fw_controller)
   );



   sci_abstract_element_pool_construct(
      &fw_controller->free_remote_device_pool,
      fw_controller->remote_device_pool_elements,
      SCI_MAX_REMOTE_DEVICES
   );


   for (index = 0; index < SCI_MAX_DOMAINS; index++)
   {
      scif_sas_domain_construct(
         &fw_controller->domains[index], index, fw_controller
      );
   }


   sci_fast_list_init(&fw_controller->smp_phy_memory_list);

   for (smp_phy_index = 0;
        smp_phy_index < SCIF_SAS_SMP_PHY_COUNT;
        smp_phy_index++)
   {
      sci_fast_list_element_init(
         &fw_controller->smp_phy_array[smp_phy_index],
         &(fw_controller->smp_phy_array[smp_phy_index].list_element)
      );


      sci_fast_list_insert_tail(
         (&(fw_controller->smp_phy_memory_list)),
         (&(fw_controller->smp_phy_array[smp_phy_index].list_element))
      );
   }

   scif_sas_controller_set_default_config_parameters(fw_controller);

   fw_controller->internal_request_entries =
      SCIF_SAS_MAX_INTERNAL_REQUEST_COUNT;





   scif_cb_lock_disassociate(fw_controller, &fw_controller->hprq.lock);
}
