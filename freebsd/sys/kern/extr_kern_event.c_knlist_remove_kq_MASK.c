#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct knote {int kn_status; TYPE_1__* kn_kq; int /*<<< orphan*/ * kn_knlist; } ;
struct knlist {int /*<<< orphan*/  kl_list; int /*<<< orphan*/  kl_lockarg; int /*<<< orphan*/  (* kl_lock ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  kq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct knlist*,int) ; 
 int KN_DETACHED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct knote*) ; 
 int /*<<< orphan*/  FUNC6 (struct knlist*) ; 
 int /*<<< orphan*/  kn_selnext ; 
 int /*<<< orphan*/  knote ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct knlist *knl, struct knote *kn, int knlislocked,
    int kqislocked)
{

	FUNC0(!kqislocked || knlislocked, ("kq locked w/o knl locked"));
	FUNC1(knl, knlislocked);
	FUNC7(&kn->kn_kq->kq_lock, kqislocked ? MA_OWNED : MA_NOTOWNED);
	FUNC0(kqislocked || FUNC5(kn), ("knote %p not in flux", kn));
	FUNC0((kn->kn_status & KN_DETACHED) == 0,
	    ("knote %p was already detached", kn));
	if (!knlislocked)
		knl->kl_lock(knl->kl_lockarg);
	FUNC4(&knl->kl_list, kn, knote, kn_selnext);
	kn->kn_knlist = NULL;
	if (!knlislocked)
		FUNC6(knl);
	if (!kqislocked)
		FUNC2(kn->kn_kq);
	kn->kn_status |= KN_DETACHED;
	if (!kqislocked)
		FUNC3(kn->kn_kq);
}