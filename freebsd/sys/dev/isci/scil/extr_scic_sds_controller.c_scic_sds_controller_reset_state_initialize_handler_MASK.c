#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U32 ;
struct TYPE_28__ {scalar_t__ logical_port_entries; scalar_t__ task_context_entries; scalar_t__ remote_node_entries; int /*<<< orphan*/  port_agent; TYPE_4__* scu_registers; int /*<<< orphan*/ * port_table; int /*<<< orphan*/ * phy_table; int /*<<< orphan*/  timeout_timer; } ;
struct TYPE_25__ {int /*<<< orphan*/ * protocol_engine; int /*<<< orphan*/ * port; } ;
struct TYPE_26__ {int /*<<< orphan*/ * viit; TYPE_2__ ptsg; TYPE_1__* pe; } ;
struct TYPE_27__ {TYPE_3__ peg0; } ;
struct TYPE_24__ {int /*<<< orphan*/  ll; int /*<<< orphan*/  tl; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  TYPE_5__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 void* FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  PCI_RELAXED_ORDERING_ENABLE ; 
 int SCIC_LOG_OBJECT_CONTROLLER ; 
 int SCIC_LOG_OBJECT_INITIALIZATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_INITIALIZED ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_INITIALIZING ; 
 scalar_t__ SCI_FAILURE ; 
 scalar_t__ SCI_MAX_PHYS ; 
 int /*<<< orphan*/  SCI_MODE_SPEED ; 
 scalar_t__ SCI_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  SCU_CONTEXT_RAM_INIT_STALL_TIME ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ SCU_RAM_INIT_COMPLETED ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/  scic_sds_controller_timeout_handler ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 scalar_t__ FUNC29 (scalar_t__) ; 
 scalar_t__ FUNC30 (scalar_t__) ; 

__attribute__((used)) static
SCI_STATUS FUNC31(
   SCI_BASE_CONTROLLER_T *controller
)
{
   U32 index;
   SCI_STATUS result = SCI_SUCCESS;
   SCIC_SDS_CONTROLLER_T *this_controller;

   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   FUNC1(*(
      FUNC11(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_INITIALIZATION,
      "scic_sds_controller_reset_state_initialize_handler(0x%x) enter\n",
      controller
   ));

   FUNC12(
      FUNC18(this_controller),
      SCI_BASE_CONTROLLER_STATE_INITIALIZING
   );

   this_controller->timeout_timer = FUNC14(
      controller,
      scic_sds_controller_timeout_handler,
      controller
   );

   FUNC19(this_controller);

   /// todo: This should really be done in the reset state enter but
   ///       the controller has not yet been initialized before getting
   ///       to the reset enter state so the PCI BAR is not yet assigned
   FUNC22(this_controller);

#if defined(ARLINGTON_BUILD)
   scic_sds_controller_lex_atux_initialization(this_controller);
#elif    defined(PLEASANT_RIDGE_BUILD) \
      || defined(PBG_HBA_A0_BUILD) \
      || defined(PBG_HBA_A2_BUILD)
   scic_sds_controller_afe_initialization(this_controller);
#elif defined(PBG_HBA_BETA_BUILD) || defined(PBG_BUILD)
   // There is nothing to do here for B0 since we do not have to
   // program the AFE registers.
   /// @todo The AFE settings are supposed to be correct for the B0 but
   ///       presently they seem to be wrong.
   scic_sds_controller_afe_initialization(this_controller);
#else  // !defined(ARLINGTON_BUILD) && !defined(PLEASANT_RIDGE_BUILD)
   // What other systems do we want to add here?
#endif // !defined(ARLINGTON_BUILD) && !defined(PLEASANT_RIDGE_BUILD)

   if (SCI_SUCCESS == result)
   {
      U32 status;
      U32 terminate_loop;

      // Take the hardware out of reset
      FUNC10(this_controller, 0x00000000);

      /// @todo Provide meaningfull error code for hardware failure
      //result = SCI_FAILURE_CONTROLLER_HARDWARE;
      result = SCI_FAILURE;
      terminate_loop = 100;

      while (terminate_loop-- && (result != SCI_SUCCESS))
      {
         // Loop until the hardware reports success
         FUNC13(SCU_CONTEXT_RAM_INIT_STALL_TIME);
         status = FUNC9(this_controller);

         if ((status & SCU_RAM_INIT_COMPLETED) == SCU_RAM_INIT_COMPLETED)
         {
            result = SCI_SUCCESS;
         }
      }
   }

#ifdef ARLINGTON_BUILD
   scic_sds_controller_enable_chipwatch(this_controller);
#endif

   if (result == SCI_SUCCESS)
   {
      U32 max_supported_ports;
      U32 max_supported_devices;
      U32 max_supported_io_requests;
      U32 device_context_capacity;

      // Determine what are the actaul device capacities that the
      // hardware will support
      device_context_capacity = FUNC8(this_controller);

      max_supported_ports =
         FUNC28(device_context_capacity);
      max_supported_devices =
         FUNC29(device_context_capacity);
      max_supported_io_requests =
         FUNC30(device_context_capacity);

      // Make all PEs that are unassigned match up with the logical ports
      for (index = 0; index < max_supported_ports; index++)
      {
         FUNC27(
            this_controller,
            this_controller->scu_registers->peg0.ptsg.protocol_engine[index],
            index
         );
      }

      // Now that we have the correct hardware reported minimum values
      // build the MDL for the controller.  Default to a performance
      // configuration.
      FUNC15(this_controller, SCI_MODE_SPEED);

      // Record the smaller of the two capacity values
      this_controller->logical_port_entries =
         FUNC0(max_supported_ports, this_controller->logical_port_entries);

      this_controller->task_context_entries =
         FUNC0(max_supported_io_requests, this_controller->task_context_entries);

      this_controller->remote_node_entries =
         FUNC0(max_supported_devices, this_controller->remote_node_entries);
   }

   // Initialize hardware PCI Relaxed ordering in DMA engines
   if (result == SCI_SUCCESS)
   {
      U32 dma_configuration;

      // Configure the payload DMA
      dma_configuration = FUNC6(this_controller);
      dma_configuration |= FUNC5(PCI_RELAXED_ORDERING_ENABLE);
      FUNC7(this_controller, dma_configuration);

      // Configure the control DMA
      dma_configuration = FUNC3(this_controller);
      dma_configuration |= FUNC2(PCI_RELAXED_ORDERING_ENABLE);
      FUNC4(this_controller, dma_configuration);
   }

   // Initialize the PHYs before the PORTs because the PHY registers
   // are accessed during the port initialization.
   if (result == SCI_SUCCESS)
   {
      // Initialize the phys
      for (index = 0;
           (result == SCI_SUCCESS) && (index < SCI_MAX_PHYS);
           index++)
      {
         result = FUNC23(
            &this_controller->phy_table[index],
            &this_controller->scu_registers->peg0.pe[index].tl,
            &this_controller->scu_registers->peg0.pe[index].ll
         );
      }
   }

   //Initialize the SGPIO Unit for HARDWARE controlled SGPIO
   if(result == SCI_SUCCESS)
   {
      FUNC26(this_controller);
   }

   if (result == SCI_SUCCESS)
   {
      // Initialize the logical ports
      for (index = 0;
              (index < this_controller->logical_port_entries)
           && (result == SCI_SUCCESS);
           index++)
      {
         result = FUNC25(
            &this_controller->port_table[index],
            &this_controller->scu_registers->peg0.ptsg.port[index],
            &this_controller->scu_registers->peg0.ptsg.protocol_engine,
            &this_controller->scu_registers->peg0.viit[index]
         );
      }
   }

   if (SCI_SUCCESS == result)
   {
      result = FUNC24(
                  this_controller,
                  &this_controller->port_agent
               );
   }

   // Advance the controller state machine
   if (result == SCI_SUCCESS)
   {
      FUNC12(
         FUNC18(this_controller),
         SCI_BASE_CONTROLLER_STATE_INITIALIZED
      );
   }
   else
   {
      //stay in the same state and release the resource
      FUNC21(this_controller);

      FUNC1(*(
         FUNC11(controller),
         SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_INITIALIZATION,
         "Invalid Port Configuration from scic_sds_controller_reset_state_initialize_handler(0x%x) \n",
         controller
      ));

   }

   return result;
}