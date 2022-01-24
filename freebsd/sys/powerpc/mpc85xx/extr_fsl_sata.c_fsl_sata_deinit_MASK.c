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
typedef  int uint32_t ;
struct fsl_sata_channel {int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ATA_SC_DET_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FSL_SATA_P_HCTRL ; 
 int FSL_SATA_P_HCTRL_HC_ON ; 
 int FSL_SATA_P_HCTRL_INT_MASK ; 
 int /*<<< orphan*/  FSL_SATA_P_SCTL ; 
 struct fsl_sata_channel* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_sata_channel*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct fsl_sata_channel *ch = FUNC3(dev);
	uint32_t r;

	/* Disable port interrupts. */
	r = FUNC0(ch->r_mem, FSL_SATA_P_HCTRL);
	FUNC1(ch->r_mem, FSL_SATA_P_HCTRL, r & ~FSL_SATA_P_HCTRL_INT_MASK);
	/* Reset command register. */
	FUNC4(ch);
	/* Allow everything, including partial and slumber modes. */
	FUNC1(ch->r_mem, FSL_SATA_P_SCTL, 0);
	FUNC2(100);
	/* Disable PHY. */
	FUNC1(ch->r_mem, FSL_SATA_P_SCTL, ATA_SC_DET_DISABLE);
	r = FUNC0(ch->r_mem, FSL_SATA_P_HCTRL);
	/* Turn off the controller. */
	FUNC1(ch->r_mem, FSL_SATA_P_HCTRL, r & ~FSL_SATA_P_HCTRL_HC_ON);
	return (0);
}