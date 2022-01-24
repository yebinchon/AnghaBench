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
struct ata_channel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_SERROR ; 
 int /*<<< orphan*/  ATA_SSTATUS ; 
 int ATA_SS_DET_MASK ; 
 int ATA_SS_DET_PHY_ONLINE ; 
 int ATA_SS_IPM_ACTIVE ; 
 int ATA_SS_IPM_MASK ; 
 int ATA_SS_SPD_MASK ; 
 int ATA_SS_SPD_NO_SPEED ; 
 scalar_t__ FUNC0 (struct ata_channel*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_channel*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int
FUNC4(struct ata_channel *ch, int port, int quick)
{
    u_int32_t status;
    int timeout, t;

    /* wait up to 1 second for "connect well" */
    timeout = (quick == 2) ? 0 : 100;
    t = 0;
    while (1) {
	if (FUNC0(ch, port, ATA_SSTATUS, &status))
	    return (0);
	if (((status & ATA_SS_DET_MASK) == ATA_SS_DET_PHY_ONLINE) &&
	    ((status & ATA_SS_SPD_MASK) != ATA_SS_SPD_NO_SPEED) &&
	    ((status & ATA_SS_IPM_MASK) == ATA_SS_IPM_ACTIVE))
	    break;
	if (++t > timeout)
	    break;
	FUNC2(10000);
    }
    if (bootverbose) {
	if (t > timeout) {
	    if (port < 0) {
		FUNC3(ch->dev, "SATA connect timeout status=%08x\n",
		    status);
	    } else {
		FUNC3(ch->dev, "p%d: SATA connect timeout status=%08x\n",
		    port, status);
	    }
	} else if (port < 0) {
	    FUNC3(ch->dev, "SATA connect time=%dms status=%08x\n",
		t * 10, status);
	} else {
	    FUNC3(ch->dev, "p%d: SATA connect time=%dms status=%08x\n",
		port, t * 10, status);
	}
    }

    /* clear SATA error register */
    FUNC1(ch, port, ATA_SERROR, 0xffffffff);

    return ((t > timeout) ? 0 : 1);
}