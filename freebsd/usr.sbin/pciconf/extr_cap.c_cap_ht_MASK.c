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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
#define  PCIM_HTCAP_ADDRESS_MAPPING 142 
#define  PCIM_HTCAP_DIRECT_ROUTE 141 
#define  PCIM_HTCAP_EXT_CONFIG_SPACE 140 
#define  PCIM_HTCAP_FLE 139 
#define  PCIM_HTCAP_GEN3 138 
#define  PCIM_HTCAP_HIGH_NODE_COUNT 137 
 int PCIM_HTCAP_HOST ; 
#define  PCIM_HTCAP_INTERRUPT 136 
#define  PCIM_HTCAP_MSI_MAPPING 135 
#define  PCIM_HTCAP_PM 134 
#define  PCIM_HTCAP_RETRY_MODE 133 
#define  PCIM_HTCAP_REVISION_ID 132 
 int PCIM_HTCAP_SLAVE ; 
#define  PCIM_HTCAP_SWITCH 131 
#define  PCIM_HTCAP_UNITID_CLUMPING 130 
#define  PCIM_HTCAP_VCSET 129 
#define  PCIM_HTCAP_X86_ENCODING 128 
 int PCIM_HTCMD_CAP_MASK ; 
 int PCIM_HTCMD_MSI_ENABLE ; 
 int PCIM_HTCMD_MSI_FIXED ; 
 scalar_t__ PCIR_HTMSI_ADDRESS_HI ; 
 scalar_t__ PCIR_HTMSI_ADDRESS_LO ; 
 scalar_t__ PCIR_HT_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(int fd, struct pci_conf *p, uint8_t ptr)
{
	uint32_t reg;
	uint16_t command;

	command = FUNC1(fd, &p->pc_sel, ptr + PCIR_HT_COMMAND, 2);
	FUNC0("HT ");
	if ((command & 0xe000) == PCIM_HTCAP_SLAVE)
		FUNC0("slave");
	else if ((command & 0xe000) == PCIM_HTCAP_HOST)
		FUNC0("host");
	else
		switch (command & PCIM_HTCMD_CAP_MASK) {
		case PCIM_HTCAP_SWITCH:
			FUNC0("switch");
			break;
		case PCIM_HTCAP_INTERRUPT:
			FUNC0("interrupt");
			break;
		case PCIM_HTCAP_REVISION_ID:
			FUNC0("revision ID");
			break;
		case PCIM_HTCAP_UNITID_CLUMPING:
			FUNC0("unit ID clumping");
			break;
		case PCIM_HTCAP_EXT_CONFIG_SPACE:
			FUNC0("extended config space");
			break;
		case PCIM_HTCAP_ADDRESS_MAPPING:
			FUNC0("address mapping");
			break;
		case PCIM_HTCAP_MSI_MAPPING:
			FUNC0("MSI %saddress window %s at 0x",
			    command & PCIM_HTCMD_MSI_FIXED ? "fixed " : "",
			    command & PCIM_HTCMD_MSI_ENABLE ? "enabled" :
			    "disabled");
			if (command & PCIM_HTCMD_MSI_FIXED)
				FUNC0("fee00000");
			else {
				reg = FUNC1(fd, &p->pc_sel,
				    ptr + PCIR_HTMSI_ADDRESS_HI, 4);
				if (reg != 0)
					FUNC0("%08x", reg);
				reg = FUNC1(fd, &p->pc_sel,
				    ptr + PCIR_HTMSI_ADDRESS_LO, 4);
				FUNC0("%08x", reg);
			}
			break;
		case PCIM_HTCAP_DIRECT_ROUTE:
			FUNC0("direct route");
			break;
		case PCIM_HTCAP_VCSET:
			FUNC0("VC set");
			break;
		case PCIM_HTCAP_RETRY_MODE:
			FUNC0("retry mode");
			break;
		case PCIM_HTCAP_X86_ENCODING:
			FUNC0("X86 encoding");
			break;
		case PCIM_HTCAP_GEN3:
			FUNC0("Gen3");
			break;
		case PCIM_HTCAP_FLE:
			FUNC0("function-level extension");
			break;
		case PCIM_HTCAP_PM:
			FUNC0("power management");
			break;
		case PCIM_HTCAP_HIGH_NODE_COUNT:
			FUNC0("high node count");
			break;
		default:
			FUNC0("unknown %02x", command);
			break;
		}
}