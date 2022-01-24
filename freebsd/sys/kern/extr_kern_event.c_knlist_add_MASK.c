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
struct knote {int kn_status; int /*<<< orphan*/  kn_kq; struct knlist* kn_knlist; } ;
struct knlist {int /*<<< orphan*/  kl_lockarg; int /*<<< orphan*/  (* kl_unlock ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  kl_list; int /*<<< orphan*/  (* kl_lock ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct knlist*,int) ; 
 int KN_DETACHED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct knote*) ; 
 int /*<<< orphan*/  kn_selnext ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(struct knlist *knl, struct knote *kn, int islocked)
{

	FUNC1(knl, islocked);
	FUNC3(kn->kn_kq);
	FUNC0(FUNC6(kn), ("knote %p not in flux", kn));
	FUNC0((kn->kn_status & KN_DETACHED) != 0,
	    ("knote %p was not detached", kn));
	if (!islocked)
		knl->kl_lock(knl->kl_lockarg);
	FUNC5(&knl->kl_list, kn, kn_selnext);
	if (!islocked)
		knl->kl_unlock(knl->kl_lockarg);
	FUNC2(kn->kn_kq);
	kn->kn_knlist = knl;
	kn->kn_status &= ~KN_DETACHED;
	FUNC4(kn->kn_kq);
}