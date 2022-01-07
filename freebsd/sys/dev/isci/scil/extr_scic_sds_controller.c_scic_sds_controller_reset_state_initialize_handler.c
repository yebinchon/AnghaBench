
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_28__ {scalar_t__ logical_port_entries; scalar_t__ task_context_entries; scalar_t__ remote_node_entries; int port_agent; TYPE_4__* scu_registers; int * port_table; int * phy_table; int timeout_timer; } ;
struct TYPE_25__ {int * protocol_engine; int * port; } ;
struct TYPE_26__ {int * viit; TYPE_2__ ptsg; TYPE_1__* pe; } ;
struct TYPE_27__ {TYPE_3__ peg0; } ;
struct TYPE_24__ {int ll; int tl; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_5__ SCIC_SDS_CONTROLLER_T ;


 void* MIN (scalar_t__,scalar_t__) ;
 int PCI_RELAXED_ORDERING_ENABLE ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_INITIALIZATION ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_BASE_CONTROLLER_STATE_INITIALIZED ;
 int SCI_BASE_CONTROLLER_STATE_INITIALIZING ;
 scalar_t__ SCI_FAILURE ;
 scalar_t__ SCI_MAX_PHYS ;
 int SCI_MODE_SPEED ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ SCU_CDMACR_GEN_BIT (int ) ;
 scalar_t__ SCU_CDMACR_READ (TYPE_5__*) ;
 int SCU_CDMACR_WRITE (TYPE_5__*,scalar_t__) ;
 int SCU_CONTEXT_RAM_INIT_STALL_TIME ;
 scalar_t__ SCU_PDMACR_GEN_BIT (int ) ;
 scalar_t__ SCU_PDMACR_READ (TYPE_5__*) ;
 int SCU_PDMACR_WRITE (TYPE_5__*,scalar_t__) ;
 scalar_t__ SCU_RAM_INIT_COMPLETED ;
 scalar_t__ SMU_DCC_READ (TYPE_5__*) ;
 scalar_t__ SMU_SMUCSR_READ (TYPE_5__*) ;
 int SMU_SMUSRCR_WRITE (TYPE_5__*,int) ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_cb_stall_execution (int ) ;
 int scic_cb_timer_create (int *,int ,int *) ;
 int scic_controller_set_mode (TYPE_5__*,int ) ;
 int scic_sds_controller_afe_initialization (TYPE_5__*) ;
 int scic_sds_controller_enable_chipwatch (TYPE_5__*) ;
 int scic_sds_controller_get_base_state_machine (TYPE_5__*) ;
 int scic_sds_controller_initialize_power_control (TYPE_5__*) ;
 int scic_sds_controller_lex_atux_initialization (TYPE_5__*) ;
 int scic_sds_controller_release_resource (TYPE_5__*) ;
 int scic_sds_controller_reset_hardware (TYPE_5__*) ;
 int scic_sds_controller_timeout_handler ;
 scalar_t__ scic_sds_phy_initialize (int *,int *,int *) ;
 scalar_t__ scic_sds_port_configuration_agent_initialize (TYPE_5__*,int *) ;
 scalar_t__ scic_sds_port_initialize (int *,int *,int **,int *) ;
 int scic_sgpio_hardware_initialize (TYPE_5__*) ;
 int scu_register_write (TYPE_5__*,int ,scalar_t__) ;
 scalar_t__ smu_dcc_get_max_ports (scalar_t__) ;
 scalar_t__ smu_dcc_get_max_remote_node_context (scalar_t__) ;
 scalar_t__ smu_dcc_get_max_task_context (scalar_t__) ;

__attribute__((used)) static
SCI_STATUS scic_sds_controller_reset_state_initialize_handler(
   SCI_BASE_CONTROLLER_T *controller
)
{
   U32 index;
   SCI_STATUS result = SCI_SUCCESS;
   SCIC_SDS_CONTROLLER_T *this_controller;

   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_INITIALIZATION,
      "scic_sds_controller_reset_state_initialize_handler(0x%x) enter\n",
      controller
   ));

   sci_base_state_machine_change_state(
      scic_sds_controller_get_base_state_machine(this_controller),
      SCI_BASE_CONTROLLER_STATE_INITIALIZING
   );

   this_controller->timeout_timer = scic_cb_timer_create(
      controller,
      scic_sds_controller_timeout_handler,
      controller
   );

   scic_sds_controller_initialize_power_control(this_controller);




   scic_sds_controller_reset_hardware(this_controller);
   if (SCI_SUCCESS == result)
   {
      U32 status;
      U32 terminate_loop;


      SMU_SMUSRCR_WRITE(this_controller, 0x00000000);



      result = SCI_FAILURE;
      terminate_loop = 100;

      while (terminate_loop-- && (result != SCI_SUCCESS))
      {

         scic_cb_stall_execution(SCU_CONTEXT_RAM_INIT_STALL_TIME);
         status = SMU_SMUCSR_READ(this_controller);

         if ((status & SCU_RAM_INIT_COMPLETED) == SCU_RAM_INIT_COMPLETED)
         {
            result = SCI_SUCCESS;
         }
      }
   }





   if (result == SCI_SUCCESS)
   {
      U32 max_supported_ports;
      U32 max_supported_devices;
      U32 max_supported_io_requests;
      U32 device_context_capacity;



      device_context_capacity = SMU_DCC_READ(this_controller);

      max_supported_ports =
         smu_dcc_get_max_ports(device_context_capacity);
      max_supported_devices =
         smu_dcc_get_max_remote_node_context(device_context_capacity);
      max_supported_io_requests =
         smu_dcc_get_max_task_context(device_context_capacity);


      for (index = 0; index < max_supported_ports; index++)
      {
         scu_register_write(
            this_controller,
            this_controller->scu_registers->peg0.ptsg.protocol_engine[index],
            index
         );
      }




      scic_controller_set_mode(this_controller, SCI_MODE_SPEED);


      this_controller->logical_port_entries =
         MIN(max_supported_ports, this_controller->logical_port_entries);

      this_controller->task_context_entries =
         MIN(max_supported_io_requests, this_controller->task_context_entries);

      this_controller->remote_node_entries =
         MIN(max_supported_devices, this_controller->remote_node_entries);
   }


   if (result == SCI_SUCCESS)
   {
      U32 dma_configuration;


      dma_configuration = SCU_PDMACR_READ(this_controller);
      dma_configuration |= SCU_PDMACR_GEN_BIT(PCI_RELAXED_ORDERING_ENABLE);
      SCU_PDMACR_WRITE(this_controller, dma_configuration);


      dma_configuration = SCU_CDMACR_READ(this_controller);
      dma_configuration |= SCU_CDMACR_GEN_BIT(PCI_RELAXED_ORDERING_ENABLE);
      SCU_CDMACR_WRITE(this_controller, dma_configuration);
   }



   if (result == SCI_SUCCESS)
   {

      for (index = 0;
           (result == SCI_SUCCESS) && (index < SCI_MAX_PHYS);
           index++)
      {
         result = scic_sds_phy_initialize(
            &this_controller->phy_table[index],
            &this_controller->scu_registers->peg0.pe[index].tl,
            &this_controller->scu_registers->peg0.pe[index].ll
         );
      }
   }


   if(result == SCI_SUCCESS)
   {
      scic_sgpio_hardware_initialize(this_controller);
   }

   if (result == SCI_SUCCESS)
   {

      for (index = 0;
              (index < this_controller->logical_port_entries)
           && (result == SCI_SUCCESS);
           index++)
      {
         result = scic_sds_port_initialize(
            &this_controller->port_table[index],
            &this_controller->scu_registers->peg0.ptsg.port[index],
            &this_controller->scu_registers->peg0.ptsg.protocol_engine,
            &this_controller->scu_registers->peg0.viit[index]
         );
      }
   }

   if (SCI_SUCCESS == result)
   {
      result = scic_sds_port_configuration_agent_initialize(
                  this_controller,
                  &this_controller->port_agent
               );
   }


   if (result == SCI_SUCCESS)
   {
      sci_base_state_machine_change_state(
         scic_sds_controller_get_base_state_machine(this_controller),
         SCI_BASE_CONTROLLER_STATE_INITIALIZED
      );
   }
   else
   {

      scic_sds_controller_release_resource(this_controller);

      SCIC_LOG_TRACE((
         sci_base_object_get_logger(controller),
         SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_INITIALIZATION,
         "Invalid Port Configuration from scic_sds_controller_reset_state_initialize_handler(0x%x) \n",
         controller
      ));

   }

   return result;
}
