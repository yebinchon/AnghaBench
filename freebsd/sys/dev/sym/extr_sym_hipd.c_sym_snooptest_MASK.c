#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int u32 ;
typedef  TYPE_1__* hcb_p ;
struct TYPE_6__ {int rv_ctest4; int hcb_ba; int /*<<< orphan*/  cache; } ;

/* Variables and functions */
 int BF ; 
 int DIP ; 
 int IID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int INTF ; 
 int MDPE ; 
 int MPEE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int SIP ; 
 int SYM_SNOOP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  nc_ctest4 ; 
 int /*<<< orphan*/  nc_dsa ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  nc_dstat ; 
 int /*<<< orphan*/  nc_istat ; 
 int /*<<< orphan*/  nc_scratcha ; 
 int /*<<< orphan*/  nc_temp ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snoopend ; 
 int /*<<< orphan*/  snooptest ; 
 char* FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11 (hcb_p np)
{
	u32	sym_rd, sym_wr, sym_bk, host_rd, host_wr, pc, dstat;
	int	i, err=0;
#ifndef SYM_CONF_IOMAPPED
	err |= FUNC10 (np);
	if (err) return (err);
#endif
restart_test:
	/*
	 *  Enable Master Parity Checking as we intend
	 *  to enable it for normal operations.
	 */
	FUNC2 (nc_ctest4, (np->rv_ctest4 & MPEE));
	/*
	 *  init
	 */
	pc  = FUNC5 (np, snooptest);
	host_wr = 1;
	sym_wr  = 2;
	/*
	 *  Set memory and register.
	 */
	np->cache = FUNC6(host_wr);
	FUNC3 (nc_temp, sym_wr);
	/*
	 *  Start script (exchange values)
	 */
	FUNC3 (nc_dsa, np->hcb_ba);
	FUNC4 (pc);
	/*
	 *  Wait 'til done (with timeout)
	 */
	for (i=0; i<SYM_SNOOP_TIMEOUT; i++)
		if (FUNC0(nc_istat) & (INTF|SIP|DIP))
			break;
	if (i>=SYM_SNOOP_TIMEOUT) {
		FUNC7 ("CACHE TEST FAILED: timeout.\n");
		return (0x20);
	}
	/*
	 *  Check for fatal DMA errors.
	 */
	dstat = FUNC0 (nc_dstat);
#if 1	/* Band aiding for broken hardwares that fail PCI parity */
	if ((dstat & MDPE) && (np->rv_ctest4 & MPEE)) {
		FUNC7 ("%s: PCI DATA PARITY ERROR DETECTED - "
			"DISABLING MASTER DATA PARITY CHECKING.\n",
			FUNC9(np));
		np->rv_ctest4 &= ~MPEE;
		goto restart_test;
	}
#endif
	if (dstat & (MDPE|BF|IID)) {
		FUNC7 ("CACHE TEST FAILED: DMA error (dstat=0x%02x).", dstat);
		return (0x80);
	}
	/*
	 *  Save termination position.
	 */
	pc = FUNC1 (nc_dsp);
	/*
	 *  Read memory and register.
	 */
	host_rd = FUNC8(np->cache);
	sym_rd  = FUNC1 (nc_scratcha);
	sym_bk  = FUNC1 (nc_temp);

	/*
	 *  Check termination position.
	 */
	if (pc != FUNC5 (np, snoopend)+8) {
		FUNC7 ("CACHE TEST FAILED: script execution failed.\n");
		FUNC7 ("start=%08lx, pc=%08lx, end=%08lx\n",
			(u_long) FUNC5 (np, snooptest), (u_long) pc,
			(u_long) FUNC5 (np, snoopend) +8);
		return (0x40);
	}
	/*
	 *  Show results.
	 */
	if (host_wr != sym_rd) {
		FUNC7 ("CACHE TEST FAILED: host wrote %d, chip read %d.\n",
			(int) host_wr, (int) sym_rd);
		err |= 1;
	}
	if (host_rd != sym_wr) {
		FUNC7 ("CACHE TEST FAILED: chip wrote %d, host read %d.\n",
			(int) sym_wr, (int) host_rd);
		err |= 2;
	}
	if (sym_bk != sym_wr) {
		FUNC7 ("CACHE TEST FAILED: chip wrote %d, read back %d.\n",
			(int) sym_wr, (int) sym_bk);
		err |= 4;
	}

	return (err);
}