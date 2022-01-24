#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_13__ {scalar_t__ assigned_device_count; scalar_t__ timer_handle; scalar_t__ reserved_rni; scalar_t__ reserved_tci; TYPE_10__* owning_controller; } ;
struct TYPE_12__ {int /*<<< orphan*/  available_remote_nodes; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_PORT_T ;
typedef  TYPE_1__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_PORT_STATE_READY ; 
 scalar_t__ SCI_FAILURE ; 
 scalar_t__ SCI_FAILURE_INSUFFICIENT_RESOURCES ; 
 scalar_t__ SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION ; 
 scalar_t__ SCI_INVALID_HANDLE ; 
 scalar_t__ SCI_SUCCESS ; 
 scalar_t__ SCU_DUMMY_INDEX ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  scic_sds_port_timeout_handler ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
SCI_STATUS FUNC12(
   SCI_BASE_PORT_T *port
)
{
   U32 phy_mask;
   SCI_STATUS status = SCI_SUCCESS;
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   if (this_port->assigned_device_count > 0)
   {
      /// @todo This is a start failure operation because there are still
      ///       devices assigned to this port.  There must be no devices
      ///       assigned to a port on a start operation.
      return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
   }

   this_port->timer_handle = FUNC1(
      FUNC7(this_port),
      scic_sds_port_timeout_handler,
      this_port
   );

   if (this_port->timer_handle == SCI_INVALID_HANDLE)
   {
      return SCI_FAILURE_INSUFFICIENT_RESOURCES;
   }

   if (FUNC10(this_port))
   {
   if (this_port->reserved_rni == SCU_DUMMY_INDEX)
   {
      this_port->reserved_rni =
         FUNC11(
            &this_port->owning_controller->available_remote_nodes, 1
         );

      if (this_port->reserved_rni != SCU_DUMMY_INDEX)
      {
         FUNC3(
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
      // Allocate a TCI and remove the sequence nibble
      this_port->reserved_tci =
         FUNC2(this_port->owning_controller);

      if (this_port->reserved_tci != SCU_DUMMY_INDEX)
      {
         FUNC4(this_port, this_port->reserved_tci);
      }
      else
      {
         status = SCI_FAILURE_INSUFFICIENT_RESOURCES;
      }
   }
   }

   if (status == SCI_SUCCESS)
   {
      phy_mask = FUNC8(this_port);

      // There are one or more phys assigned to this port.  Make sure
      // the port's phy mask is in fact legal and supported by the
      // silicon.
      if (FUNC9(this_port, phy_mask) == TRUE)
      {
         FUNC0(
            FUNC6(this_port),
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
      FUNC5(this_port);
   }

   return status;
}