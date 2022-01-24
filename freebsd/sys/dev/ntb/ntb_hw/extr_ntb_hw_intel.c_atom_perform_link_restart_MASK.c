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
typedef  int uint32_t ;
struct ntb_softc {int dummy; } ;

/* Variables and functions */
 int ATOM_DESKEWSTS_DBERR ; 
 int /*<<< orphan*/  ATOM_DESKEWSTS_OFFSET ; 
 int /*<<< orphan*/  ATOM_ERRCORSTS_OFFSET ; 
 int ATOM_IBIST_ERR_OFLOW ; 
 int /*<<< orphan*/  ATOM_IBSTERRRCRVSTS0_OFFSET ; 
 int /*<<< orphan*/  ATOM_LTSSMERRSTS0_OFFSET ; 
 int ATOM_LTSSMERRSTS0_UNEXPECTEDEI ; 
 int ATOM_LTSSMSTATEJMP_FORCEDETECT ; 
 int /*<<< orphan*/  ATOM_LTSSMSTATEJMP_OFFSET ; 
 int /*<<< orphan*/  ATOM_MODPHY_PCSREG4 ; 
 int /*<<< orphan*/  ATOM_MODPHY_PCSREG6 ; 
 int PCIM_AER_COR_REPLAY_ROLLOVER ; 
 int hz ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(struct ntb_softc *ntb)
{
	uint32_t status;

	/* Driver resets the NTB ModPhy lanes - magic! */
	FUNC1(1, ATOM_MODPHY_PCSREG6, 0xe0);
	FUNC1(1, ATOM_MODPHY_PCSREG4, 0x40);
	FUNC1(1, ATOM_MODPHY_PCSREG4, 0x60);
	FUNC1(1, ATOM_MODPHY_PCSREG6, 0x60);

	/* Driver waits 100ms to allow the NTB ModPhy to settle */
	FUNC2("ModPhy", hz / 10);

	/* Clear AER Errors, write to clear */
	status = FUNC0(4, ATOM_ERRCORSTS_OFFSET);
	status &= PCIM_AER_COR_REPLAY_ROLLOVER;
	FUNC1(4, ATOM_ERRCORSTS_OFFSET, status);

	/* Clear unexpected electrical idle event in LTSSM, write to clear */
	status = FUNC0(4, ATOM_LTSSMERRSTS0_OFFSET);
	status |= ATOM_LTSSMERRSTS0_UNEXPECTEDEI;
	FUNC1(4, ATOM_LTSSMERRSTS0_OFFSET, status);

	/* Clear DeSkew Buffer error, write to clear */
	status = FUNC0(4, ATOM_DESKEWSTS_OFFSET);
	status |= ATOM_DESKEWSTS_DBERR;
	FUNC1(4, ATOM_DESKEWSTS_OFFSET, status);

	status = FUNC0(4, ATOM_IBSTERRRCRVSTS0_OFFSET);
	status &= ATOM_IBIST_ERR_OFLOW;
	FUNC1(4, ATOM_IBSTERRRCRVSTS0_OFFSET, status);

	/* Releases the NTB state machine to allow the link to retrain */
	status = FUNC0(4, ATOM_LTSSMSTATEJMP_OFFSET);
	status &= ~ATOM_LTSSMSTATEJMP_FORCEDETECT;
	FUNC1(4, ATOM_LTSSMSTATEJMP_OFFSET, status);
}