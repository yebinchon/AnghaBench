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
struct alq {int aq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct alq*) ; 
 int /*<<< orphan*/  FUNC3 (struct alq*) ; 
 int AQ_ACTIVE ; 
 int AQ_FLUSHING ; 
 scalar_t__ FUNC4 (struct alq*) ; 
 int /*<<< orphan*/  FUNC5 (struct alq*) ; 
 int FUNC6 (struct alq*) ; 
 int /*<<< orphan*/  FUNC7 (struct alq*) ; 

void
FUNC8(struct alq *alq)
{
	int needwakeup = 0;

	FUNC0();
	FUNC2(alq);

	/*
	 * Pull the lever iff there is data to flush and we're
	 * not already in the middle of a flush operation.
	 */
	if (FUNC4(alq) && !(alq->aq_flags & AQ_FLUSHING)) {
		if (alq->aq_flags & AQ_ACTIVE)
			FUNC5(alq);

		FUNC1();
		needwakeup = FUNC6(alq);
	} else
		FUNC1();

	FUNC3(alq);

	if (needwakeup)
		FUNC7(alq);
}