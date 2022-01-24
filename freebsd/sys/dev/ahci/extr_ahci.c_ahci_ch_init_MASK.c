#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {int work_bus; int rfis_bus; } ;
struct ahci_channel {int pm_level; int /*<<< orphan*/  r_mem; TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AHCI_CL_OFFSET ; 
 int /*<<< orphan*/  AHCI_P_CLB ; 
 int /*<<< orphan*/  AHCI_P_CLBU ; 
 int /*<<< orphan*/  AHCI_P_CMD ; 
 int AHCI_P_CMD_ACTIVE ; 
 int AHCI_P_CMD_ALPE ; 
 int AHCI_P_CMD_ASP ; 
 int AHCI_P_CMD_POD ; 
 int AHCI_P_CMD_SUD ; 
 int /*<<< orphan*/  AHCI_P_FB ; 
 int /*<<< orphan*/  AHCI_P_FBU ; 
 int /*<<< orphan*/  AHCI_P_IE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_channel*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_channel*) ; 
 struct ahci_channel* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct ahci_channel *ch = FUNC3(dev);
	uint64_t work;

	/* Disable port interrupts */
	FUNC0(ch->r_mem, AHCI_P_IE, 0);
	/* Setup work areas */
	work = ch->dma.work_bus + AHCI_CL_OFFSET;
	FUNC0(ch->r_mem, AHCI_P_CLB, work & 0xffffffff);
	FUNC0(ch->r_mem, AHCI_P_CLBU, work >> 32);
	work = ch->dma.rfis_bus;
	FUNC0(ch->r_mem, AHCI_P_FB, work & 0xffffffff); 
	FUNC0(ch->r_mem, AHCI_P_FBU, work >> 32);
	/* Activate the channel and power/spin up device */
	FUNC0(ch->r_mem, AHCI_P_CMD,
	     (AHCI_P_CMD_ACTIVE | AHCI_P_CMD_POD | AHCI_P_CMD_SUD |
	     ((ch->pm_level == 2 || ch->pm_level == 3) ? AHCI_P_CMD_ALPE : 0) |
	     ((ch->pm_level > 2) ? AHCI_P_CMD_ASP : 0 )));
	FUNC2(ch);
	FUNC1(ch, 1);
	return (0);
}