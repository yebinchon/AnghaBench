#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kaiocb {int jobflags; int /*<<< orphan*/ * cancel_fn; TYPE_1__* userproc; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_aioinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int KAIOCB_CANCELLING ; 
 int KAIOCB_CLEARED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(struct kaiocb *job)
{

	FUNC0(job->userproc->p_aioinfo, MA_OWNED);
	FUNC1(job->cancel_fn != NULL);
	if (job->jobflags & KAIOCB_CANCELLING) {
		job->jobflags |= KAIOCB_CLEARED;
		return (false);
	}
	job->cancel_fn = NULL;
	return (true);
}