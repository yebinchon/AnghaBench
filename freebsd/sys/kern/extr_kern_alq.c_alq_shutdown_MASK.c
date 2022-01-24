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
struct alq {int aq_flags; int /*<<< orphan*/  aq_cred; int /*<<< orphan*/  aq_vp; int /*<<< orphan*/  aq_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct alq*) ; 
 int /*<<< orphan*/  FUNC3 (struct alq*) ; 
 int AQ_ACTIVE ; 
 int AQ_SHUTDOWN ; 
 int AQ_WANTED ; 
 int /*<<< orphan*/  FWRITE ; 
 scalar_t__ FUNC4 (struct alq*) ; 
 int /*<<< orphan*/  FUNC5 (struct alq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC7 (struct alq*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct alq *alq)
{
	FUNC2(alq);

	/* Stop any new writers. */
	alq->aq_flags |= AQ_SHUTDOWN;

	/*
	 * If the ALQ isn't active but has unwritten data (possible if
	 * the ALQ_NOACTIVATE flag has been used), explicitly activate the
	 * ALQ here so that the pending data gets flushed by the ald_daemon.
	 */
	if (!(alq->aq_flags & AQ_ACTIVE) && FUNC4(alq)) {
		alq->aq_flags |= AQ_ACTIVE;
		FUNC3(alq);
		FUNC0();
		FUNC5(alq);
		FUNC1();
		FUNC2(alq);
	}

	/* Drain IO */
	while (alq->aq_flags & AQ_ACTIVE) {
		alq->aq_flags |= AQ_WANTED;
		FUNC7(alq, &alq->aq_mtx, "aldclose", 0);
	}
	FUNC3(alq);

	FUNC8(alq->aq_vp, FWRITE, alq->aq_cred,
	    curthread);
	FUNC6(alq->aq_cred);
}