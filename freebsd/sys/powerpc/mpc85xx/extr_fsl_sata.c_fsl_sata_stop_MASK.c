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
typedef  int /*<<< orphan*/  uint32_t ;
struct fsl_sata_channel {scalar_t__ eslots; int /*<<< orphan*/  dev; int /*<<< orphan*/  r_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSL_SATA_P_HCTRL ; 
 int /*<<< orphan*/  FSL_SATA_P_HCTRL_HC_FORCE_OFF ; 
 int /*<<< orphan*/  FSL_SATA_P_HCTRL_HC_ON ; 
 int /*<<< orphan*/  FSL_SATA_P_HSTS ; 
 int /*<<< orphan*/  FSL_SATA_P_HSTS_HS_ON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct fsl_sata_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct fsl_sata_channel *ch)
{
	uint32_t cmd;
	int i;

	/* Kill all activity on this channel */
	cmd = FUNC0(ch->r_mem, FSL_SATA_P_HCTRL);
	cmd &= ~FSL_SATA_P_HCTRL_HC_ON;

	for (i = 0; i < 2; i++) {
		FUNC1(ch->r_mem, FSL_SATA_P_HCTRL, cmd);
		if (FUNC3(ch, FSL_SATA_P_HSTS,
		    FSL_SATA_P_HSTS_HS_ON, 0, 500)) {
			if (i != 0)
				FUNC2(ch->dev,
				    "stopping FSL SATA engine failed\n");
			cmd |= FSL_SATA_P_HCTRL_HC_FORCE_OFF;
		} else
			break;
	}
	ch->eslots = 0;
}