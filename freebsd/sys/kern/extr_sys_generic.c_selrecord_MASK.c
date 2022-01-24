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
struct thread {struct seltd* td_sel; } ;
struct seltd {int st_flags; int /*<<< orphan*/  st_selq; struct selfd* st_free2; struct selfd* st_free1; } ;
struct selinfo {struct mtx* si_mtx; int /*<<< orphan*/  si_tdlist; } ;
struct selfd {int /*<<< orphan*/  sf_refs; struct mtx* sf_mtx; struct selinfo* sf_si; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int SELTD_RESCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct selfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct selfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 struct mtx* FUNC4 (int /*<<< orphan*/ ,struct selinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_select ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sf_link ; 
 int /*<<< orphan*/  sf_threads ; 

void
FUNC8(struct thread *selector, struct selinfo *sip)
{
	struct selfd *sfp;
	struct seltd *stp;
	struct mtx *mtxp;

	stp = selector->td_sel;
	/*
	 * Don't record when doing a rescan.
	 */
	if (stp->st_flags & SELTD_RESCAN)
		return;
	/*
	 * Grab one of the preallocated descriptors.
	 */
	sfp = NULL;
	if ((sfp = stp->st_free1) != NULL)
		stp->st_free1 = NULL;
	else if ((sfp = stp->st_free2) != NULL)
		stp->st_free2 = NULL;
	else
		FUNC6("selrecord: No free selfd on selq");
	mtxp = sip->si_mtx;
	if (mtxp == NULL)
		mtxp = FUNC4(mtxpool_select, sip);
	/*
	 * Initialize the sfp and queue it in the thread.
	 */
	sfp->sf_si = sip;
	sfp->sf_mtx = mtxp;
	FUNC7(&sfp->sf_refs, 2);
	FUNC0(&stp->st_selq, sfp, sf_link);
	/*
	 * Now that we've locked the sip, check for initialization.
	 */
	FUNC3(mtxp);
	if (sip->si_mtx == NULL) {
		sip->si_mtx = mtxp;
		FUNC1(&sip->si_tdlist);
	}
	/*
	 * Add this thread to the list of selfds listening on this selinfo.
	 */
	FUNC2(&sip->si_tdlist, sfp, sf_threads);
	FUNC5(sip->si_mtx);
}