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
struct ntb_softc {int lnk_sta; int /*<<< orphan*/  lr_timer; int /*<<< orphan*/  heartbeat_timer; TYPE_1__* reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  lnk_sta; int /*<<< orphan*/  ntb_ctl; } ;

/* Variables and functions */
 int ATOM_CNTL_LINK_DOWN ; 
 int ATOM_LINK_RECOVERY_TIME ; 
 int NTB_HB_TIMEOUT ; 
 int NTB_LINK_SPEED_MASK ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 () ; 
 void FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,void (*) (void*),struct ntb_softc*) ; 
 int hz ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct ntb_softc *ntb = arg;
	unsigned speed, width, oldspeed, oldwidth;
	uint32_t status32;

	FUNC4(ntb);

	/*
	 * There is a potential race between the 2 NTB devices recovering at
	 * the same time.  If the times are the same, the link will not recover
	 * and the driver will be stuck in this loop forever.  Add a random
	 * interval to the recovery time to prevent this race.
	 */
	status32 = FUNC1() % ATOM_LINK_RECOVERY_TIME;
	FUNC7("Link", (ATOM_LINK_RECOVERY_TIME + status32) * hz / 1000);

	if (FUNC3(ntb))
		goto retry;

	status32 = FUNC6(4, ntb->reg->ntb_ctl);
	if ((status32 & ATOM_CNTL_LINK_DOWN) != 0)
		goto out;

	status32 = FUNC6(4, ntb->reg->lnk_sta);
	width = FUNC0(status32);
	speed = status32 & NTB_LINK_SPEED_MASK;

	oldwidth = FUNC0(ntb->lnk_sta);
	oldspeed = ntb->lnk_sta & NTB_LINK_SPEED_MASK;
	if (oldwidth != width || oldspeed != speed)
		goto retry;

out:
	FUNC5(&ntb->heartbeat_timer, NTB_HB_TIMEOUT * hz, atom_link_hb,
	    ntb);
	return;

retry:
	FUNC5(&ntb->lr_timer, NTB_HB_TIMEOUT * hz, recover_atom_link,
	    ntb);
}