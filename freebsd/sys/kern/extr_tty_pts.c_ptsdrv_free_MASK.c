#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct pts_softc {scalar_t__ pts_unit; int /*<<< orphan*/ * pts_cdev; TYPE_1__ pts_outpoll; TYPE_1__ pts_inpoll; TYPE_2__* pts_cred; } ;
struct TYPE_5__ {int /*<<< orphan*/  cr_ruidinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PTS ; 
 int /*<<< orphan*/  RACCT_NPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pts_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pts_pool ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(void *softc)
{
	struct pts_softc *psc = softc;

	/* Make device number available again. */
	if (psc->pts_unit >= 0)
		FUNC4(pts_pool, psc->pts_unit);

	FUNC0(psc->pts_cred->cr_ruidinfo, -1, 0);
	FUNC6(psc->pts_cred, RACCT_NPTS, 1);
	FUNC1(psc->pts_cred);

	FUNC7(&psc->pts_inpoll);
	FUNC7(&psc->pts_outpoll);
	FUNC5(&psc->pts_inpoll.si_note);
	FUNC5(&psc->pts_outpoll.si_note);

#ifdef PTS_EXTERNAL
	/* Destroy master device as well. */
	if (psc->pts_cdev != NULL)
		destroy_dev_sched(psc->pts_cdev);
#endif /* PTS_EXTERNAL */

	FUNC3(psc, M_PTS);
}