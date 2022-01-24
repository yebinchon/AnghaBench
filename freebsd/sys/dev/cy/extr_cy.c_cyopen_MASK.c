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
struct tty {struct com_s* t_sc; } ;
struct com_s {int unit; int channel_control; int intr_enable; int /*<<< orphan*/  last_modem_status; int /*<<< orphan*/  prev_modem_status; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int CD1400_CCR_CHANRESET ; 
 int CD1400_CCR_CMDRESET ; 
 int /*<<< orphan*/  CD1400_LIVR ; 
 int /*<<< orphan*/  CD1400_MSVR2 ; 
 int /*<<< orphan*/  CD1400_SRER ; 
 int CD1400_SRER_MDMCH ; 
 int CD1400_SRER_RXDATA ; 
 int CD1400_xIVR_CHAN ; 
 int CD1400_xIVR_CHAN_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct com_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct com_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct com_s*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 

__attribute__((used)) static int
FUNC9(struct tty *tp, struct cdev *dev)
{
	struct com_s	*com;
	int		s;

	com = tp->t_sc;
	s = FUNC8();
	/*
	 * We jump to this label after all non-interrupted sleeps to pick
	 * up any changes of the device state.
	 */

	/* Encode per-board unit in LIVR for access in intr routines. */
	FUNC4(com, CD1400_LIVR,
		  (com->unit & CD1400_xIVR_CHAN) << CD1400_xIVR_CHAN_SHIFT);

	/*
	 * Flush fifos.  This requires a full channel reset which
	 * also disables the transmitter and receiver.  Recover
	 * from this.
	 */
	FUNC2(com,
			   CD1400_CCR_CMDRESET | CD1400_CCR_CHANRESET);
	FUNC2(com, com->channel_control);

	FUNC5();
	FUNC0();
	com->prev_modem_status = com->last_modem_status
	    = FUNC3(com, CD1400_MSVR2);
	FUNC4(com, CD1400_SRER,
		  com->intr_enable
		  = CD1400_SRER_MDMCH | CD1400_SRER_RXDATA);
	FUNC1();
	FUNC6();
	FUNC7();
	return (0);
}