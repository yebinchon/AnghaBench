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
struct prison {scalar_t__ pr_ref; int /*<<< orphan*/  pr_id; int /*<<< orphan*/  pr_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct prison *pr)
{

	FUNC1(&pr->pr_mtx, MA_OWNED);
	FUNC0(pr->pr_ref > 0,
	    ("Trying to hold dead prison %p (jid=%d).", pr, pr->pr_id));
	pr->pr_ref++;
}