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
struct ata_channel {scalar_t__ pm_level; int /*<<< orphan*/  conntask; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_SERROR ; 
 int ATA_SE_PHY_CHANGED ; 
 int /*<<< orphan*/  ATA_SSTATUS ; 
 int ATA_SS_DET_MASK ; 
 int ATA_SS_DET_PHY_ONLINE ; 
 int ATA_SS_IPM_ACTIVE ; 
 int ATA_SS_IPM_MASK ; 
 int ATA_SS_SPD_MASK ; 
 int ATA_SS_SPD_NO_SPEED ; 
 scalar_t__ FUNC0 (struct ata_channel*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_channel*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

void
FUNC5(device_t dev, int port)
{
    struct ata_channel *ch = FUNC2(dev);
    u_int32_t error, status;

    if (FUNC0(ch, port, ATA_SERROR, &error))
	return;

    /* Check that SError value is sane. */
    if (error == 0xffffffff)
	return;

    /* Clear set error bits/interrupt. */
    if (error)
	FUNC1(ch, port, ATA_SERROR, error);

    /* if we have a connection event deal with it */
    if ((error & ATA_SE_PHY_CHANGED) && (ch->pm_level == 0)) {
	if (bootverbose) {
	    if (FUNC0(ch, port, ATA_SSTATUS, &status)) {
		    FUNC3(dev, "PHYRDY change\n");
	    } else if (((status & ATA_SS_DET_MASK) == ATA_SS_DET_PHY_ONLINE) &&
		((status & ATA_SS_SPD_MASK) != ATA_SS_SPD_NO_SPEED) &&
		((status & ATA_SS_IPM_MASK) == ATA_SS_IPM_ACTIVE)) {
		    FUNC3(dev, "CONNECT requested\n");
	    } else
		    FUNC3(dev, "DISCONNECT requested\n");
	}
	FUNC4(taskqueue_thread, &ch->conntask);
    }
}