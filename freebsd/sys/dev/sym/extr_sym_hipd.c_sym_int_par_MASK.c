#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int u_char ;
typedef  int u32 ;
typedef  TYPE_1__* hcb_p ;
typedef  TYPE_2__* ccb_p ;
struct TYPE_13__ {int /*<<< orphan*/  xerr_status; } ;
struct TYPE_12__ {int /*<<< orphan*/ * msgout; } ;

/* Variables and functions */
 int /*<<< orphan*/  HF_EXT_ERR ; 
 int /*<<< orphan*/  HF_PRT ; 
 int /*<<< orphan*/  HS_PRT ; 
 int /*<<< orphan*/  HS_UNEXPECTED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ISCON ; 
 int MA ; 
 int /*<<< orphan*/  M_ID_ERROR ; 
 int /*<<< orphan*/  M_PARITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XE_PARITY_ERR ; 
 int /*<<< orphan*/  clrack ; 
 int /*<<< orphan*/  dispatch ; 
 int /*<<< orphan*/  nc_dbc ; 
 int /*<<< orphan*/  nc_dsa ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  nc_sbcl ; 
 int /*<<< orphan*/  nc_scntl1 ; 
 int /*<<< orphan*/  nc_temp ; 
 int /*<<< orphan*/  pm_handle ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int,int) ; 
 TYPE_2__* FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 char* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC13 (hcb_p np, u_short sist)
{
	u_char	hsts	= FUNC0 (HS_PRT);
	u32	dsp	= FUNC1 (nc_dsp);
	u32	dbc	= FUNC1 (nc_dbc);
	u32	dsa	= FUNC1 (nc_dsa);
	u_char	sbcl	= FUNC0 (nc_sbcl);
	u_char	cmd	= dbc >> 24;
	int phase	= cmd & 7;
	ccb_p	cp	= FUNC8(np, dsa);

	FUNC7("%s: SCSI parity error detected: SCR1=%d DBC=%x SBCL=%x\n",
		FUNC10(np), hsts, dbc, sbcl);

	/*
	 *  Check that the chip is connected to the SCSI BUS.
	 */
	if (!(FUNC0 (nc_scntl1) & ISCON)) {
		FUNC11(np, HS_UNEXPECTED);
		return;
	}

	/*
	 *  If the nexus is not clearly identified, reset the bus.
	 *  We will try to do better later.
	 */
	if (!cp)
		goto reset_all;

	/*
	 *  Check instruction was a MOV, direction was INPUT and
	 *  ATN is asserted.
	 */
	if ((cmd & 0xc0) || !(phase & 1) || !(sbcl & 0x8))
		goto reset_all;

	/*
	 *  Keep track of the parity error.
	 */
	FUNC4 (HF_PRT, HF_EXT_ERR);
	cp->xerr_status |= XE_PARITY_ERR;

	/*
	 *  Prepare the message to send to the device.
	 */
	np->msgout[0] = (phase == 7) ? M_PARITY : M_ID_ERROR;

	/*
	 *  If the old phase was DATA IN phase, we have to deal with
	 *  the 3 situations described above.
	 *  For other input phases (MSG IN and STATUS), the device
	 *  must resend the whole thing that failed parity checking
	 *  or signal error. So, jumping to dispatcher should be OK.
	 */
	if (phase == 1 || phase == 5) {
		/* Phase mismatch handled by SCRIPTS */
		if (dsp == FUNC6 (np, pm_handle))
			FUNC3 (dsp);
		/* Phase mismatch handled by the C code */
		else if (sist & MA)
			FUNC9 (np);
		/* No phase mismatch occurred */
		else {
			FUNC2 (nc_temp, dsp);
			FUNC3 (FUNC5 (np, dispatch));
		}
	}
	else
		FUNC3 (FUNC5 (np, clrack));
	return;

reset_all:
	FUNC12(np);
}