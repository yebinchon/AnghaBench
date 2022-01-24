#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
typedef  TYPE_1__* hcb_p ;
struct TYPE_4__ {int multiplier; int features; } ;

/* Variables and functions */
 int DBLEN ; 
 int DBLSEL ; 
 int FE_LCKFRQ ; 
 int HSC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LCKFRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  nc_scntl3 ; 
 int /*<<< orphan*/  nc_stest1 ; 
 int /*<<< orphan*/  nc_stest3 ; 
 int /*<<< orphan*/  nc_stest4 ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int sym_verbose ; 

__attribute__((used)) static void FUNC5(hcb_p np, u_char scntl3)
{
	/*
	 *  If multiplier not present or not selected, leave here.
	 */
	if (np->multiplier <= 1) {
		FUNC1(nc_scntl3,	scntl3);
		return;
	}

	if (sym_verbose >= 2)
		FUNC3 ("%s: enabling clock multiplier\n", FUNC4(np));

	FUNC1(nc_stest1, DBLEN);	   /* Enable clock multiplier		  */
	/*
	 *  Wait for the LCKFRQ bit to be set if supported by the chip.
	 *  Otherwise wait 20 micro-seconds.
	 */
	if (np->features & FE_LCKFRQ) {
		int i = 20;
		while (!(FUNC0(nc_stest4) & LCKFRQ) && --i > 0)
			FUNC2 (20);
		if (!i)
			FUNC3("%s: the chip cannot lock the frequency\n",
				FUNC4(np));
	} else
		FUNC2 (20);
	FUNC1(nc_stest3, HSC);		/* Halt the scsi clock		*/
	FUNC1(nc_scntl3,	scntl3);
	FUNC1(nc_stest1, (DBLEN|DBLSEL));/* Select clock multiplier	*/
	FUNC1(nc_stest3, 0x00);		/* Restart scsi clock 		*/
}