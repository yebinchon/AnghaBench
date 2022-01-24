#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ U8 ;
typedef  int /*<<< orphan*/  SCI_SAS_ADDRESS_T ;
typedef  scalar_t__ SCI_PORT_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PORT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_CONTROLLER ; 
 int SCIC_LOG_OBJECT_PHY ; 
 int SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SCI_INVALID_HANDLE ; 
 scalar_t__ SCI_MAX_PORTS ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCIC_SDS_PORT_T * FUNC8(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PHY_T        * phy
)
{
   U8 port_index;
   SCI_PORT_HANDLE_T port_handle;
   SCI_SAS_ADDRESS_T port_sas_address;
   SCI_SAS_ADDRESS_T port_attached_device_address;
   SCI_SAS_ADDRESS_T phy_sas_address;
   SCI_SAS_ADDRESS_T phy_attached_device_address;

   FUNC0(*(
      FUNC1(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT | SCIC_LOG_OBJECT_PHY,
      "scic_sds_port_confgiruation_agent_find_port(0x%08x, 0x%08x) enter\n",
      controller, phy
   ));

   // Since this phy can be a member of a wide port check to see if one or
   // more phys match the sent and received SAS address as this phy in which
   // case it should participate in the same port.
   FUNC5(phy, &phy_sas_address);
   FUNC4(phy, &phy_attached_device_address);

   for (port_index = 0; port_index < SCI_MAX_PORTS; port_index++)
   {
      if (FUNC3(controller, port_index, &port_handle) == SCI_SUCCESS)
      {
         SCIC_SDS_PORT_T * port = (SCIC_SDS_PORT_T *)port_handle;

         FUNC7(port, &port_sas_address);
         FUNC6(port, &port_attached_device_address);

         if (
               (FUNC2(port_sas_address, phy_sas_address) == 0)
            && (FUNC2(port_attached_device_address, phy_attached_device_address) == 0)
            )
         {
            return port;
         }
      }
   }

   return SCI_INVALID_HANDLE;
}