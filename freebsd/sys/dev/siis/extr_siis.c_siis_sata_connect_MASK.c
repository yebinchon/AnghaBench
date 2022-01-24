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
typedef  int u_int32_t ;
struct siis_channel {int /*<<< orphan*/  r_mem; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ATA_SS_DET_MASK ; 
 int ATA_SS_DET_NO_DEVICE ; 
 int ATA_SS_DET_PHY_OFFLINE ; 
 int ATA_SS_DET_PHY_ONLINE ; 
 int ATA_SS_IPM_ACTIVE ; 
 int ATA_SS_IPM_MASK ; 
 int ATA_SS_SPD_MASK ; 
 int ATA_SS_SPD_NO_SPEED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SIIS_P_SERR ; 
 int /*<<< orphan*/  SIIS_P_SSTS ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int
FUNC4(struct siis_channel *ch)
{
	u_int32_t status;
	int timeout, found = 0;

	/* Wait up to 100ms for "connect well" */
	for (timeout = 0; timeout < 1000 ; timeout++) {
		status = FUNC0(ch->r_mem, SIIS_P_SSTS);
		if ((status & ATA_SS_DET_MASK) != ATA_SS_DET_NO_DEVICE)
			found = 1;
		if (((status & ATA_SS_DET_MASK) == ATA_SS_DET_PHY_ONLINE) &&
		    ((status & ATA_SS_SPD_MASK) != ATA_SS_SPD_NO_SPEED) &&
		    ((status & ATA_SS_IPM_MASK) == ATA_SS_IPM_ACTIVE))
			break;
		if ((status & ATA_SS_DET_MASK) == ATA_SS_DET_PHY_OFFLINE) {
			if (bootverbose) {
				FUNC3(ch->dev, "SATA offline status=%08x\n",
				    status);
			}
			return (0);
		}
		if (found == 0 && timeout >= 100)
			break;
		FUNC2(100);
	}
	if (timeout >= 1000 || !found) {
		if (bootverbose) {
			FUNC3(ch->dev,
			    "SATA connect timeout time=%dus status=%08x\n",
			    timeout * 100, status);
		}
		return (0);
	}
	if (bootverbose) {
		FUNC3(ch->dev, "SATA connect time=%dus status=%08x\n",
		    timeout * 100, status);
	}
	/* Clear SATA error register */
	FUNC1(ch->r_mem, SIIS_P_SERR, 0xffffffff);
	return (1);
}