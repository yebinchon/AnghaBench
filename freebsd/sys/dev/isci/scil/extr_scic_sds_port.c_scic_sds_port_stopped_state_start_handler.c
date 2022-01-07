
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int U32 ;
struct TYPE_13__ {scalar_t__ assigned_device_count; scalar_t__ timer_handle; scalar_t__ reserved_rni; scalar_t__ reserved_tci; TYPE_10__* owning_controller; } ;
struct TYPE_12__ {int available_remote_nodes; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_PORT_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int SCI_BASE_PORT_STATE_READY ;
 scalar_t__ SCI_FAILURE ;
 scalar_t__ SCI_FAILURE_INSUFFICIENT_RESOURCES ;
 scalar_t__ SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION ;
 scalar_t__ SCI_INVALID_HANDLE ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ SCU_DUMMY_INDEX ;
 scalar_t__ TRUE ;
 int sci_base_state_machine_change_state (int ,int ) ;
 scalar_t__ scic_cb_timer_create (int ,int ,TYPE_1__*) ;
 scalar_t__ scic_controller_allocate_io_tag (TYPE_10__*) ;
 int scic_sds_port_construct_dummy_rnc (TYPE_1__*,scalar_t__) ;
 int scic_sds_port_construct_dummy_task (TYPE_1__*,scalar_t__) ;
 int scic_sds_port_destroy_dummy_resources (TYPE_1__*) ;
 int scic_sds_port_get_base_state_machine (TYPE_1__*) ;
 int scic_sds_port_get_controller (TYPE_1__*) ;
 int scic_sds_port_get_phys (TYPE_1__*) ;
 scalar_t__ scic_sds_port_is_phy_mask_valid (TYPE_1__*,int ) ;
 scalar_t__ scic_sds_port_requires_scheduler_workaround (TYPE_1__*) ;
 int scic_sds_port_timeout_handler ;
 scalar_t__ scic_sds_remote_node_table_allocate_remote_node (int *,int) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_stopped_state_start_handler(
   SCI_BASE_PORT_T *port
)
{
   U32 phy_mask;
   SCI_STATUS status = SCI_SUCCESS;
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   if (this_port->assigned_device_count > 0)
   {



      return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
   }

   this_port->timer_handle = scic_cb_timer_create(
      scic_sds_port_get_controller(this_port),
      scic_sds_port_timeout_handler,
      this_port
   );

   if (this_port->timer_handle == SCI_INVALID_HANDLE)
   {
      return SCI_FAILURE_INSUFFICIENT_RESOURCES;
   }

   if (scic_sds_port_requires_scheduler_workaround(this_port))
   {
   if (this_port->reserved_rni == SCU_DUMMY_INDEX)
   {
      this_port->reserved_rni =
         scic_sds_remote_node_table_allocate_remote_node(
            &this_port->owning_controller->available_remote_nodes, 1
         );

      if (this_port->reserved_rni != SCU_DUMMY_INDEX)
      {
         scic_sds_port_construct_dummy_rnc(
            this_port,
            this_port->reserved_rni
         );
      }
      else
      {
         status = SCI_FAILURE_INSUFFICIENT_RESOURCES;
      }
   }

   if (this_port->reserved_tci == SCU_DUMMY_INDEX)
   {

      this_port->reserved_tci =
         scic_controller_allocate_io_tag(this_port->owning_controller);

      if (this_port->reserved_tci != SCU_DUMMY_INDEX)
      {
         scic_sds_port_construct_dummy_task(this_port, this_port->reserved_tci);
      }
      else
      {
         status = SCI_FAILURE_INSUFFICIENT_RESOURCES;
      }
   }
   }

   if (status == SCI_SUCCESS)
   {
      phy_mask = scic_sds_port_get_phys(this_port);




      if (scic_sds_port_is_phy_mask_valid(this_port, phy_mask) == TRUE)
      {
         sci_base_state_machine_change_state(
            scic_sds_port_get_base_state_machine(this_port),
            SCI_BASE_PORT_STATE_READY
         );
      }
      else
      {
         status = SCI_FAILURE;
      }
   }

   if (status != SCI_SUCCESS)
   {
      scic_sds_port_destroy_dummy_resources(this_port);
   }

   return status;
}
