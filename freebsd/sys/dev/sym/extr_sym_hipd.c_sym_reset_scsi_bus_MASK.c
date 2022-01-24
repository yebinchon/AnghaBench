#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int u32 ;
typedef  TYPE_1__* hcb_p ;
struct TYPE_5__ {int rv_dcntl; int features; } ;

/* Variables and functions */
 int CRST ; 
 int FE_WIDE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int IRQM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RST ; 
 int SYM_SETUP_SCSI_BUS_CHECK ; 
 int TE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  nc_dcntl ; 
 int /*<<< orphan*/  nc_sbcl ; 
 int /*<<< orphan*/  nc_sbdl ; 
 int /*<<< orphan*/  nc_scntl1 ; 
 int /*<<< orphan*/  nc_sien ; 
 int /*<<< orphan*/  nc_sstat0 ; 
 int /*<<< orphan*/  nc_sstat2 ; 
 int /*<<< orphan*/  nc_stest3 ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(hcb_p np, int enab_int)
{
	u32 term;
	int retv = 0;

	FUNC7(np);	/* Soft reset the chip */
	if (enab_int)
		FUNC3 (nc_sien, RST);
	/*
	 *  Enable Tolerant, reset IRQD if present and
	 *  properly set IRQ mode, prior to resetting the bus.
	 */
	FUNC2 (nc_stest3, TE);
	FUNC2 (nc_dcntl, (np->rv_dcntl & IRQM));
	FUNC2 (nc_scntl1, CRST);
	FUNC4 (200);

	if (!SYM_SETUP_SCSI_BUS_CHECK)
		goto out;
	/*
	 *  Check for no terminators or SCSI bus shorts to ground.
	 *  Read SCSI data bus, data parity bits and control signals.
	 *  We are expecting RESET to be TRUE and other signals to be
	 *  FALSE.
	 */
	term =	FUNC0(nc_sstat0);
	term =	((term & 2) << 7) + ((term & 1) << 17);	/* rst sdp0 */
	term |= ((FUNC0(nc_sstat2) & 0x01) << 26) |	/* sdp1     */
		((FUNC1(nc_sbdl) & 0xff)   << 9)  |	/* d7-0     */
		((FUNC1(nc_sbdl) & 0xff00) << 10) |	/* d15-8    */
		FUNC0(nc_sbcl);	/* req ack bsy sel atn msg cd io    */

	if (!(np->features & FE_WIDE))
		term &= 0x3ffff;

	if (term != (2<<7)) {
		FUNC5("%s: suspicious SCSI data while resetting the BUS.\n",
			FUNC6(np));
		FUNC5("%s: %sdp0,d7-0,rst,req,ack,bsy,sel,atn,msg,c/d,i/o = "
			"0x%lx, expecting 0x%lx\n",
			FUNC6(np),
			(np->features & FE_WIDE) ? "dp1,d15-8," : "",
			(u_long)term, (u_long)(2<<7));
		if (SYM_SETUP_SCSI_BUS_CHECK == 1)
			retv = 1;
	}
out:
	FUNC2 (nc_scntl1, 0);
	/* MDELAY(100); */
	return retv;
}