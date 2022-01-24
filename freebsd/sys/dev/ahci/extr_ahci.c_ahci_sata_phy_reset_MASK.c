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
typedef  int uint32_t ;
struct ahci_channel {int listening; scalar_t__ pm_level; int caps; int /*<<< orphan*/  r_mem; scalar_t__ pm_present; TYPE_1__* user; } ;
struct TYPE_2__ {int revision; } ;

/* Variables and functions */
 int AHCI_CAP_SSS ; 
 int /*<<< orphan*/  AHCI_P_CMD ; 
 int AHCI_P_CMD_SUD ; 
 int /*<<< orphan*/  AHCI_P_SCTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ATA_SC_DET_DISABLE ; 
 int /*<<< orphan*/  ATA_SC_DET_IDLE ; 
 int /*<<< orphan*/  ATA_SC_DET_RESET ; 
 int ATA_SC_IPM_DIS_PARTIAL ; 
 int ATA_SC_IPM_DIS_SLUMBER ; 
 int ATA_SC_SPD_SPEED_GEN1 ; 
 int ATA_SC_SPD_SPEED_GEN2 ; 
 int ATA_SC_SPD_SPEED_GEN3 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ahci_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahci_channel*) ; 

__attribute__((used)) static int
FUNC5(struct ahci_channel *ch)
{
	int sata_rev;
	uint32_t val, detval;

	if (ch->listening) {
		val = FUNC0(ch->r_mem, AHCI_P_CMD);
		val |= AHCI_P_CMD_SUD;
		FUNC1(ch->r_mem, AHCI_P_CMD, val);
		ch->listening = 0;
	}
	sata_rev = ch->user[ch->pm_present ? 15 : 0].revision;
	if (sata_rev == 1)
		val = ATA_SC_SPD_SPEED_GEN1;
	else if (sata_rev == 2)
		val = ATA_SC_SPD_SPEED_GEN2;
	else if (sata_rev == 3)
		val = ATA_SC_SPD_SPEED_GEN3;
	else
		val = 0;
	detval = FUNC3(ch, ATA_SC_DET_RESET);
	FUNC1(ch->r_mem, AHCI_P_SCTL,
	    detval | val |
	    ATA_SC_IPM_DIS_PARTIAL | ATA_SC_IPM_DIS_SLUMBER);
	FUNC2(1000);
	detval = FUNC3(ch, ATA_SC_DET_IDLE);
	FUNC1(ch->r_mem, AHCI_P_SCTL,
	    detval | val | ((ch->pm_level > 0) ? 0 :
	    (ATA_SC_IPM_DIS_PARTIAL | ATA_SC_IPM_DIS_SLUMBER)));
	if (!FUNC4(ch)) {
		if (ch->caps & AHCI_CAP_SSS) {
			val = FUNC0(ch->r_mem, AHCI_P_CMD);
			val &= ~AHCI_P_CMD_SUD;
			FUNC1(ch->r_mem, AHCI_P_CMD, val);
			ch->listening = 1;
		} else if (ch->pm_level > 0)
			FUNC1(ch->r_mem, AHCI_P_SCTL, ATA_SC_DET_DISABLE);
		return (0);
	}
	return (1);
}