#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct mqueue {TYPE_2__ mq_wsel; TYPE_1__ mq_rsel; } ;
struct knote {scalar_t__ kn_filter; int /*<<< orphan*/  kn_fp; } ;

/* Variables and functions */
 scalar_t__ EVFILT_READ ; 
 scalar_t__ EVFILT_WRITE ; 
 struct mqueue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct knote *kn)
{
	struct mqueue *mq = FUNC0(kn->kn_fp);

	if (kn->kn_filter == EVFILT_READ)
		FUNC1(&mq->mq_rsel.si_note, kn, 0);
	else if (kn->kn_filter == EVFILT_WRITE)
		FUNC1(&mq->mq_wsel.si_note, kn, 0);
	else
		FUNC2("filt_mqdetach");
}