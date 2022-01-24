#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct ISCI_REMOTE_DEVICE {struct ISCI_DOMAIN* domain; } ;
struct ISCI_DOMAIN {int /*<<< orphan*/  sci_object; struct ISCI_CONTROLLER* controller; } ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  scif_controller_handle; } ;
struct TYPE_6__ {int negotiated_link_rate; } ;
struct TYPE_5__ {int phy_mask; } ;
typedef  int /*<<< orphan*/  SCI_PORT_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_PHY_HANDLE_T ;
typedef  TYPE_1__ SCIC_PORT_PROPERTIES_T ;
typedef  TYPE_2__ SCIC_PHY_PROPERTIES_T ;

/* Variables and functions */
#define  SCI_SAS_150_GB 130 
#define  SCI_SAS_300_GB 129 
#define  SCI_SAS_600_GB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

uint32_t
FUNC5(struct ISCI_REMOTE_DEVICE *remote_device)
{
	struct ISCI_DOMAIN *domain = remote_device->domain;
	struct ISCI_CONTROLLER *controller = domain->controller;
	SCI_PORT_HANDLE_T port_handle;
	SCIC_PORT_PROPERTIES_T port_properties;
	uint8_t phy_index;
	SCI_PHY_HANDLE_T phy_handle;
	SCIC_PHY_PROPERTIES_T phy_properties;

	/* get a handle to the port associated with this remote device's
	 *  domain
	 */
	port_handle = FUNC4(domain->sci_object);
	FUNC2(port_handle, &port_properties);

	/* get the lowest numbered phy in the port */
	phy_index = 0;
	while ((port_properties.phy_mask != 0) &&
	    !(port_properties.phy_mask & 0x1)) {

		phy_index++;
		port_properties.phy_mask >>= 1;
	}

	/* get the properties for the lowest numbered phy */
	FUNC0(
	    FUNC3(controller->scif_controller_handle),
	    phy_index, &phy_handle);
	FUNC1(phy_handle, &phy_properties);

	switch (phy_properties.negotiated_link_rate) {
	case SCI_SAS_150_GB:
		return (150000);
	case SCI_SAS_300_GB:
		return (300000);
	case SCI_SAS_600_GB:
		return (600000);
	default:
		return (0);
	}
}