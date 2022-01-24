#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_19__ ;
typedef  struct TYPE_24__   TYPE_17__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ previous_state_id; } ;
struct TYPE_32__ {TYPE_19__ state_machine; } ;
struct TYPE_31__ {scalar_t__ element_count; } ;
struct TYPE_34__ {TYPE_7__ parent; int /*<<< orphan*/  remote_device_list; TYPE_6__ request_list; int /*<<< orphan*/  controller; int /*<<< orphan*/  core_object; scalar_t__ broadcast_change_count; } ;
struct TYPE_29__ {scalar_t__ current_state_id; } ;
struct TYPE_30__ {TYPE_4__ state_machine; } ;
struct TYPE_33__ {TYPE_5__ parent; } ;
struct TYPE_26__ {scalar_t__ smp_target; } ;
struct TYPE_27__ {TYPE_1__ bits; } ;
struct TYPE_24__ {TYPE_2__ u; } ;
struct TYPE_28__ {TYPE_17__ protocols; int /*<<< orphan*/  sas_address; } ;
struct TYPE_23__ {TYPE_3__ remote; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  int /*<<< orphan*/  SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_8__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_9__ SCIF_SAS_DOMAIN_T ;
typedef  TYPE_10__ SCIC_PORT_PROPERTIES_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_DOMAIN ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_DOMAIN_STATE_DISCOVERING ; 
 int /*<<< orphan*/  SCI_BASE_DOMAIN_STATE_STARTING ; 
 scalar_t__ SCI_BASE_DOMAIN_STATE_STOPPED ; 
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ; 
 TYPE_8__* SCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_19__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ *,TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_9__*,TYPE_8__*) ; 
 scalar_t__ FUNC13 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_9__*,TYPE_8__*) ; 
 int /*<<< orphan*/  scif_sas_domain_state_handler_table ; 

__attribute__((used)) static
void FUNC15(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *)object;

   FUNC3(
      fw_domain,
      scif_sas_domain_state_handler_table,
      SCI_BASE_DOMAIN_STATE_DISCOVERING
   );

   FUNC2((
      FUNC8(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_discovering_state_enter(0x%x) enter\n",
      fw_domain
   ));

   fw_domain->broadcast_change_count = 0;

   // Did the domain just go through a port not ready action?  If it did,
   // then we will be entering from the STOPPED state.
   if (fw_domain->parent.state_machine.previous_state_id
       != SCI_BASE_DOMAIN_STATE_STOPPED)
   {
      SCIF_SAS_REMOTE_DEVICE_T * remote_device;
      SCIC_PORT_PROPERTIES_T     properties;

      FUNC10(fw_domain->core_object, &properties);

      // If the device has not yet been added to the domain, then
      // inform the user that the device is new.
      remote_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                      FUNC13(
                         fw_domain, &properties.remote.sas_address
                      );
      if (remote_device == SCI_INVALID_HANDLE)
      {
         // simply notify the user of the new DA device and be done
         // with discovery.
         FUNC11(
            fw_domain->controller,
            fw_domain,
            &properties.remote.sas_address,
            &properties.remote.protocols
         );
      }
      else
      {
         if(properties.remote.protocols.u.bits.smp_target)
            //kick off the smp discover process.
            FUNC14(fw_domain, remote_device);
      }
   }
   else  //entered from STOPPED state.
   {
      SCI_ABSTRACT_ELEMENT_T * current_element =
             FUNC4(&(fw_domain->remote_device_list) );

      SCIF_SAS_REMOTE_DEVICE_T * fw_device;

      while (current_element != NULL)
      {
         fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                     FUNC6(current_element);

         FUNC0(fw_device->parent.state_machine.current_state_id
                == SCI_BASE_REMOTE_DEVICE_STATE_STOPPED);

         current_element =
            FUNC5(current_element);

         FUNC1((
            FUNC8(fw_domain),
            SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
            "Controller:0x%x Domain:0x%x Device:0x%x removed\n",
            fw_domain->controller, fw_domain, fw_device
         ));

         // Notify the framework user of the device removal.
         FUNC12(
            fw_domain->controller, fw_domain, fw_device
         );
      }

      FUNC0(fw_domain->request_list.element_count == 0);
      FUNC0(FUNC7(&fw_domain->remote_device_list) == 0);

      FUNC9(
         &fw_domain->parent.state_machine, SCI_BASE_DOMAIN_STATE_STARTING
      );
   }
}