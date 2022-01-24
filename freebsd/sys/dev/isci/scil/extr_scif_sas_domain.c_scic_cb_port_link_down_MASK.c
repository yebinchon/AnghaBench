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
typedef  int /*<<< orphan*/  SCI_PORT_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_PHY_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(
   SCI_CONTROLLER_HANDLE_T  controller,
   SCI_PORT_HANDLE_T        port,
   SCI_PHY_HANDLE_T         phy
)
{
   SCIF_SAS_DOMAIN_T        * fw_domain = (SCIF_SAS_DOMAIN_T*)
                                 FUNC2(port);

   FUNC0((
      FUNC1(FUNC2(port)),
      SCIF_LOG_OBJECT_DOMAIN,
      "scic_cb_port_link_down(0x%x, 0x%x, 0x%x) enter\n",
      controller, port, phy
   ));

   FUNC3(fw_domain, port);
}