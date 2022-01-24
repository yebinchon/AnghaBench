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
typedef  int u_int32_t ;
struct mly_softc {scalar_t__ mly_event_counter; scalar_t__ mly_event_waiting; } ;
struct mly_event {int dummy; } ;
struct TYPE_11__ {int sequence_number_low; } ;
struct TYPE_12__ {TYPE_5__ getevent; } ;
struct TYPE_10__ {int value; int /*<<< orphan*/  scale; } ;
struct TYPE_8__ {int lun; int target; scalar_t__ controller; scalar_t__ channel; } ;
struct TYPE_9__ {TYPE_2__ phys; } ;
struct mly_command_ioctl {int data_size; TYPE_6__ param; int /*<<< orphan*/  sub_ioctl; TYPE_4__ timeout; TYPE_3__ addr; int /*<<< orphan*/  opcode; } ;
struct mly_command {int mc_length; TYPE_1__* mc_packet; int /*<<< orphan*/  mc_complete; int /*<<< orphan*/  mc_flags; int /*<<< orphan*/ * mc_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  ioctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDACIOCTL_GETEVENT ; 
 int /*<<< orphan*/  MDACMD_IOCTL ; 
 int /*<<< orphan*/  MLY_CMD_DATAIN ; 
 int /*<<< orphan*/  MLY_TIMEOUT_SECONDS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct mly_softc*,struct mly_command**) ; 
 int /*<<< orphan*/  mly_complete_event ; 
 int /*<<< orphan*/  FUNC4 (struct mly_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mly_command*) ; 
 scalar_t__ FUNC6 (struct mly_command*) ; 

__attribute__((used)) static void
FUNC7(struct mly_softc *sc)
{
    struct mly_command		*mc;
    struct mly_command_ioctl	*mci;
    u_int32_t			event;

    FUNC1(1);

    /* get a command */
    if (FUNC3(sc, &mc))
	return;

    /* set up the data buffer */
    if ((mc->mc_data = FUNC2(sizeof(struct mly_event), M_DEVBUF, M_NOWAIT | M_ZERO)) == NULL) {
	FUNC5(mc);
	return;
    }
    mc->mc_length = sizeof(struct mly_event);
    mc->mc_flags |= MLY_CMD_DATAIN;
    mc->mc_complete = mly_complete_event;

    /*
     * Get an event number to fetch.  It's possible that we've raced with another
     * context for the last event, in which case there will be no more events.
     */
    if (sc->mly_event_counter == sc->mly_event_waiting) {
	FUNC5(mc);
	return;
    }
    event = sc->mly_event_counter++;

    /* 
     * Build the ioctl.
     *
     * At this point we are committed to sending this request, as it
     * will be the only one constructed for this particular event number.
     */
    mci = (struct mly_command_ioctl *)&mc->mc_packet->ioctl;
    mci->opcode = MDACMD_IOCTL;
    mci->data_size = sizeof(struct mly_event);
    mci->addr.phys.lun = (event >> 16) & 0xff;
    mci->addr.phys.target = (event >> 24) & 0xff;
    mci->addr.phys.channel = 0;
    mci->addr.phys.controller = 0;
    mci->timeout.value = 30;
    mci->timeout.scale = MLY_TIMEOUT_SECONDS;
    mci->sub_ioctl = MDACIOCTL_GETEVENT;
    mci->param.getevent.sequence_number_low = event & 0xffff;

    FUNC0(1, "fetch event %u", event);

    /*
     * Submit the command.
     *
     * Note that failure of mly_start() will result in this event never being
     * fetched.
     */
    if (FUNC6(mc) != 0) {
	FUNC4(sc, "couldn't fetch event %u\n", event);
	FUNC5(mc);
    }
}