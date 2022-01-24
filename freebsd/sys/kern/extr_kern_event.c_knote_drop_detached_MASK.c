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
struct thread {int dummy; } ;
struct kqueue {int /*<<< orphan*/  kq_knhashmask; struct klist* kq_knhash; struct klist* kq_knlist; } ;
struct TYPE_3__ {int /*<<< orphan*/  filter; } ;
struct knote {int kn_status; int kn_influx; size_t kn_id; TYPE_2__* kn_fop; TYPE_1__ kn_kevent; int /*<<< orphan*/ * kn_fp; struct kqueue* kn_kq; } ;
struct klist {int dummy; } ;
struct TYPE_4__ {scalar_t__ f_isfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KN_DETACHED ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int KN_QUEUED ; 
 int /*<<< orphan*/  FUNC2 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct klist*) ; 
 int /*<<< orphan*/  FUNC6 (struct klist*,struct knote*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  kn_link ; 
 int /*<<< orphan*/  knote ; 
 int /*<<< orphan*/  FUNC8 (struct knote*) ; 
 int /*<<< orphan*/  FUNC9 (struct knote*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct knote *kn, struct thread *td)
{
	struct kqueue *kq;
	struct klist *list;

	kq = kn->kn_kq;

	FUNC0((kn->kn_status & KN_DETACHED) != 0,
	    ("knote %p still attached", kn));
	FUNC3(kq);

	FUNC2(kq);
	FUNC0(kn->kn_influx == 1,
	    ("knote_drop called on %p with influx %d", kn, kn->kn_influx));

	if (kn->kn_fop->f_isfd)
		list = &kq->kq_knlist[kn->kn_id];
	else
		list = &kq->kq_knhash[FUNC1(kn->kn_id, kq->kq_knhashmask)];

	if (!FUNC5(list))
		FUNC6(list, kn, knote, kn_link);
	if (kn->kn_status & KN_QUEUED)
		FUNC8(kn);
	FUNC4(kq);

	if (kn->kn_fop->f_isfd) {
		FUNC7(kn->kn_fp, td);
		kn->kn_fp = NULL;
	}
	FUNC10(kn->kn_kevent.filter);
	kn->kn_fop = NULL;
	FUNC9(kn);
}