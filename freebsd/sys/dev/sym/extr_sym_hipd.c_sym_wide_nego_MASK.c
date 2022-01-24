#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_char ;
typedef  TYPE_4__* tcb_p ;
typedef  TYPE_5__* hcb_p ;
typedef  TYPE_6__* ccb_p ;
struct TYPE_21__ {scalar_t__ nego_status; } ;
struct TYPE_20__ {scalar_t__* msgin; scalar_t__ maxwide; int* msgout; } ;
struct TYPE_17__ {int offset; int period; } ;
struct TYPE_16__ {scalar_t__ width; } ;
struct TYPE_18__ {TYPE_2__ goal; TYPE_1__ user; } ;
struct TYPE_19__ {TYPE_3__ tinfo; } ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_NEGO ; 
 scalar_t__ HS_BUSY ; 
 scalar_t__ HS_NEGOTIATE ; 
 int /*<<< orphan*/  HS_PRT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* M_EXTENDED ; 
 scalar_t__ M_NOOP ; 
 int M_X_SYNC_REQ ; 
 int M_X_WIDE_REQ ; 
 scalar_t__ NS_SYNC ; 
 scalar_t__ NS_WIDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clrack ; 
 int /*<<< orphan*/  msg_bad ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  sdtr_resp ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  wdtr_resp ; 

__attribute__((used)) static void FUNC9(hcb_p np, tcb_p tp, ccb_p cp)
{
	u_char	chg, wide;
	int	req = 1;

	/*
	 *  Wide request message received.
	 */
	if (DEBUG_FLAGS & DEBUG_NEGO) {
		FUNC7(cp, "wide msgin", np->msgin);
	}

	/*
	 * Is it a request from the device?
	 */
	if (FUNC0 (HS_PRT) == HS_NEGOTIATE) {
		FUNC1 (HS_PRT, HS_BUSY);
		if (cp->nego_status && cp->nego_status != NS_WIDE)
			goto reject_it;
		req = 0;
	}

	/*
	 *  get requested values.
	 */
	chg  = 0;
	wide = np->msgin[3];

	/*
	 *  check values against driver limits.
	 */
	if (wide > np->maxwide)
		{chg = 1; wide = np->maxwide;}
	if (req) {
		if (wide > tp->tinfo.user.width)
			{chg = 1; wide = tp->tinfo.user.width;}
	}

	if (DEBUG_FLAGS & DEBUG_NEGO) {
		FUNC3(cp);
		FUNC6 ("wdtr: wide=%d chg=%d.\n", wide, chg);
	}

	/*
	 * This was an answer message
	 */
	if (req == 0) {
		if (chg)	/*  Answer wasn't acceptable. */
			goto reject_it;
		FUNC8 (np, cp, wide);

		/*
		 * Negotiate for SYNC immediately after WIDE response.
		 * This allows to negotiate for both WIDE and SYNC on
		 * a single SCSI command (Suggested by Justin Gibbs).
		 */
		if (tp->tinfo.goal.offset) {
			np->msgout[0] = M_EXTENDED;
			np->msgout[1] = 3;
			np->msgout[2] = M_X_SYNC_REQ;
			np->msgout[3] = tp->tinfo.goal.period;
			np->msgout[4] = tp->tinfo.goal.offset;

			if (DEBUG_FLAGS & DEBUG_NEGO) {
				FUNC7(cp, "sync msgout", np->msgout);
			}

			cp->nego_status = NS_SYNC;
			FUNC1 (HS_PRT, HS_NEGOTIATE);
			FUNC2 (FUNC5 (np, sdtr_resp));
			return;
		}

		FUNC2 (FUNC4 (np, clrack));
		return;
	}

	/*
	 *  It was a request, set value and
	 *  prepare an answer message
	 */
	FUNC8 (np, cp, wide);

	np->msgout[0] = M_EXTENDED;
	np->msgout[1] = 2;
	np->msgout[2] = M_X_WIDE_REQ;
	np->msgout[3] = wide;

	np->msgin [0] = M_NOOP;

	cp->nego_status = NS_WIDE;

	if (DEBUG_FLAGS & DEBUG_NEGO) {
		FUNC7(cp, "wide msgout", np->msgout);
	}

	FUNC2 (FUNC5 (np, wdtr_resp));
	return;
reject_it:
	FUNC2 (FUNC5 (np, msg_bad));
}