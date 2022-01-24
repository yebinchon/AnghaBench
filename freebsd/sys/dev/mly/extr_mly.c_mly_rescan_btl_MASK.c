#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union mly_devinfo {int dummy; } mly_devinfo ;
struct mly_softc {TYPE_6__** mly_btl; } ;
struct mly_ioctl_getphysdevinfovalid {int dummy; } ;
struct mly_ioctl_getlogdevinfovalid {int dummy; } ;
struct TYPE_10__ {int target; int channel; scalar_t__ lun; scalar_t__ controller; } ;
struct TYPE_9__ {int /*<<< orphan*/  logdev; } ;
struct TYPE_11__ {TYPE_4__ phys; TYPE_3__ log; } ;
struct TYPE_8__ {int value; int /*<<< orphan*/  scale; } ;
struct mly_command_ioctl {int data_size; TYPE_5__ addr; int /*<<< orphan*/  sub_ioctl; TYPE_2__ timeout; int /*<<< orphan*/  opcode; } ;
struct mly_command {int mc_length; TYPE_1__* mc_packet; int /*<<< orphan*/  mc_complete; int /*<<< orphan*/  mc_flags; int /*<<< orphan*/ * mc_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  mb_flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  ioctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDACIOCTL_GETLOGDEVINFOVALID ; 
 int /*<<< orphan*/  MDACIOCTL_GETPHYSDEVINFOVALID ; 
 int /*<<< orphan*/  MDACMD_IOCTL ; 
 int /*<<< orphan*/  MLY_BTL_RESCAN ; 
 int /*<<< orphan*/  FUNC0 (struct mly_softc*,int) ; 
 scalar_t__ FUNC1 (struct mly_softc*,int) ; 
 int /*<<< orphan*/  MLY_CMD_DATAIN ; 
 int /*<<< orphan*/  FUNC2 (struct mly_softc*,int,int) ; 
 int /*<<< orphan*/  MLY_TIMEOUT_SECONDS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct mly_softc*,struct mly_command**) ; 
 int /*<<< orphan*/  mly_complete_rescan ; 
 int /*<<< orphan*/  FUNC7 (struct mly_command*) ; 
 scalar_t__ FUNC8 (struct mly_command*) ; 

__attribute__((used)) static void
FUNC9(struct mly_softc *sc, int bus, int target)
{
    struct mly_command		*mc;
    struct mly_command_ioctl	*mci;

    FUNC4(1);

    /* check that this bus is valid */
    if (!FUNC0(sc, bus))
	return;

    /* get a command */
    if (FUNC6(sc, &mc))
	return;

    /* set up the data buffer */
    if ((mc->mc_data = FUNC5(sizeof(union mly_devinfo), M_DEVBUF, M_NOWAIT | M_ZERO)) == NULL) {
	FUNC7(mc);
	return;
    }
    mc->mc_flags |= MLY_CMD_DATAIN;
    mc->mc_complete = mly_complete_rescan;

    /* 
     * Build the ioctl.
     */
    mci = (struct mly_command_ioctl *)&mc->mc_packet->ioctl;
    mci->opcode = MDACMD_IOCTL;
    mci->addr.phys.controller = 0;
    mci->timeout.value = 30;
    mci->timeout.scale = MLY_TIMEOUT_SECONDS;
    if (FUNC1(sc, bus)) {
	mc->mc_length = mci->data_size = sizeof(struct mly_ioctl_getlogdevinfovalid);
	mci->sub_ioctl = MDACIOCTL_GETLOGDEVINFOVALID;
	mci->addr.log.logdev = FUNC2(sc, bus, target);
	FUNC3(1, "logical device %d", mci->addr.log.logdev);
    } else {
	mc->mc_length = mci->data_size = sizeof(struct mly_ioctl_getphysdevinfovalid);
	mci->sub_ioctl = MDACIOCTL_GETPHYSDEVINFOVALID;
	mci->addr.phys.lun = 0;
	mci->addr.phys.target = target;
	mci->addr.phys.channel = bus;
	FUNC3(1, "physical device %d:%d", mci->addr.phys.channel, mci->addr.phys.target);
    }
    
    /*
     * Dispatch the command.  If we successfully send the command, clear the rescan
     * bit.
     */
    if (FUNC8(mc) != 0) {
	FUNC7(mc);
    } else {
	sc->mly_btl[bus][target].mb_flags &= ~MLY_BTL_RESCAN;	/* success */	
    }
}