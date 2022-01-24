#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ u32 ;
typedef  TYPE_1__* hcb_p ;
typedef  TYPE_2__* ccb_p ;
struct TYPE_10__ {int /*<<< orphan*/  host_status; } ;
struct TYPE_9__ {int rv_ctest3; } ;

/* Variables and functions */
 int CLF ; 
 int CSF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int TE ; 
 int /*<<< orphan*/  complete_error ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  done_end ; 
 int /*<<< orphan*/  getjob_begin ; 
 int /*<<< orphan*/  getjob_end ; 
 int /*<<< orphan*/  nc_ctest3 ; 
 int /*<<< orphan*/  nc_dsa ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  nc_stest3 ; 
 int /*<<< orphan*/  reselect ; 
 int /*<<< orphan*/  sel_for_abort ; 
 int /*<<< orphan*/  sel_for_abort_1 ; 
 int /*<<< orphan*/  start ; 
 TYPE_2__* FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  ungetjob ; 

__attribute__((used)) static void FUNC8 (hcb_p np, u_char hsts)
{
	u32	dsp	= FUNC0 (nc_dsp);
	u32	dsa	= FUNC0 (nc_dsa);
	ccb_p cp	= FUNC6(np, dsa);

	/*
	 *  If we haven't been interrupted inside the SCRIPTS
	 *  critical paths, we can safely restart the SCRIPTS
	 *  and trust the DSA value if it matches a CCB.
	 */
	if ((!(dsp > FUNC4 (np, getjob_begin) &&
	       dsp < FUNC4 (np, getjob_end) + 1)) &&
	    (!(dsp > FUNC4 (np, ungetjob) &&
	       dsp < FUNC4 (np, reselect) + 1)) &&
	    (!(dsp > FUNC5 (np, sel_for_abort) &&
	       dsp < FUNC5 (np, sel_for_abort_1) + 1)) &&
	    (!(dsp > FUNC4 (np, done) &&
	       dsp < FUNC4 (np, done_end) + 1))) {
		FUNC1 (nc_ctest3, np->rv_ctest3 | CLF);	/* clear dma fifo  */
		FUNC1 (nc_stest3, TE|CSF);		/* clear scsi fifo */
		/*
		 *  If we have a CCB, let the SCRIPTS call us back for
		 *  the handling of the error with SCRATCHA filled with
		 *  STARTPOS. This way, we will be able to freeze the
		 *  device queue and requeue awaiting IOs.
		 */
		if (cp) {
			cp->host_status = hsts;
			FUNC3 (FUNC4 (np, complete_error));
		}
		/*
		 *  Otherwise just restart the SCRIPTS.
		 */
		else {
			FUNC2 (nc_dsa, 0xffffff);
			FUNC3 (FUNC4 (np, start));
		}
	}
	else
		goto reset_all;

	return;

reset_all:
	FUNC7(np);
}