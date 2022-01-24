#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_char ;
typedef  TYPE_3__* tcb_p ;
typedef  TYPE_4__* hcb_p ;
typedef  TYPE_5__* ccb_p ;
struct TYPE_20__ {scalar_t__ nego_status; } ;
struct TYPE_19__ {scalar_t__* msgin; scalar_t__ maxoffs; scalar_t__ minsync; int* msgout; } ;
struct TYPE_16__ {scalar_t__ offset; scalar_t__ period; } ;
struct TYPE_17__ {TYPE_1__ user; } ;
struct TYPE_18__ {TYPE_2__ tinfo; } ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_NEGO ; 
 int /*<<< orphan*/  HS_BUSY ; 
 scalar_t__ HS_NEGOTIATE ; 
 int /*<<< orphan*/  HS_PRT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int M_EXTENDED ; 
 scalar_t__ M_NOOP ; 
 int M_X_SYNC_REQ ; 
 scalar_t__ NS_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clrack ; 
 int /*<<< orphan*/  msg_bad ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  sdtr_resp ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_5__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC10(hcb_p np, tcb_p tp, ccb_p cp)
{
	u_char	chg, ofs, per, fak, div;
	int	req = 1;

	/*
	 *  Synchronous request message received.
	 */
	if (DEBUG_FLAGS & DEBUG_NEGO) {
		FUNC8(cp, "sync msgin", np->msgin);
	}

	/*
	 * request or answer ?
	 */
	if (FUNC0 (HS_PRT) == HS_NEGOTIATE) {
		FUNC1 (HS_PRT, HS_BUSY);
		if (cp->nego_status && cp->nego_status != NS_SYNC)
			goto reject_it;
		req = 0;
	}

	/*
	 *  get requested values.
	 */
	chg = 0;
	per = np->msgin[3];
	ofs = np->msgin[4];

	/*
	 *  check values against our limits.
	 */
	if (ofs) {
		if (ofs > np->maxoffs)
			{chg = 1; ofs = np->maxoffs;}
		if (req) {
			if (ofs > tp->tinfo.user.offset)
				{chg = 1; ofs = tp->tinfo.user.offset;}
		}
	}

	if (ofs) {
		if (per < np->minsync)
			{chg = 1; per = np->minsync;}
		if (req) {
			if (per < tp->tinfo.user.period)
				{chg = 1; per = tp->tinfo.user.period;}
		}
	}

	div = fak = 0;
	if (ofs && FUNC7(np, 0, per, &div, &fak) < 0)
		goto reject_it;

	if (DEBUG_FLAGS & DEBUG_NEGO) {
		FUNC3(cp);
		FUNC6 ("sdtr: ofs=%d per=%d div=%d fak=%d chg=%d.\n",
			ofs, per, div, fak, chg);
	}

	/*
	 *  This was an answer message
	 */
	if (req == 0) {
		if (chg) 	/* Answer wasn't acceptable. */
			goto reject_it;
		FUNC9 (np, cp, ofs, per, div, fak);
		FUNC2 (FUNC4 (np, clrack));
		return;
	}

	/*
	 *  It was a request. Set value and
	 *  prepare an answer message
	 */
	FUNC9 (np, cp, ofs, per, div, fak);

	np->msgout[0] = M_EXTENDED;
	np->msgout[1] = 3;
	np->msgout[2] = M_X_SYNC_REQ;
	np->msgout[3] = per;
	np->msgout[4] = ofs;

	cp->nego_status = NS_SYNC;

	if (DEBUG_FLAGS & DEBUG_NEGO) {
		FUNC8(cp, "sync msgout", np->msgout);
	}

	np->msgin [0] = M_NOOP;

	FUNC2 (FUNC5 (np, sdtr_resp));
	return;
reject_it:
	FUNC9 (np, cp, 0, 0, 0, 0);
	FUNC2 (FUNC5 (np, msg_bad));
}