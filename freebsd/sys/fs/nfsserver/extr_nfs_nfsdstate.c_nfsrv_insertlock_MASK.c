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
struct nfsstate {int /*<<< orphan*/  ls_lock; } ;
struct nfslockfile {int /*<<< orphan*/  lf_locallock; int /*<<< orphan*/  lf_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * le_prev; } ;
struct nfslock {scalar_t__ lo_first; TYPE_1__ lo_lckfile; struct nfslockfile* lo_lfp; struct nfsstate* lo_stp; } ;
struct TYPE_4__ {int /*<<< orphan*/  srvlocks; } ;

/* Variables and functions */
 struct nfslock* FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfslock* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfslock*,struct nfslock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nfslock*,int /*<<< orphan*/ ) ; 
 struct nfslock* FUNC4 (struct nfslock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lo_lckfile ; 
 int /*<<< orphan*/  lo_lckowner ; 
 int /*<<< orphan*/  nfsrv_openpluslock ; 
 TYPE_2__ nfsstatsv1 ; 

__attribute__((used)) static void
FUNC5(struct nfslock *new_lop, struct nfslock *insert_lop,
    struct nfsstate *stp, struct nfslockfile *lfp)
{
	struct nfslock *lop, *nlop;

	new_lop->lo_stp = stp;
	new_lop->lo_lfp = lfp;

	if (stp != NULL) {
		/* Insert in increasing lo_first order */
		lop = FUNC1(&lfp->lf_lock);
		if (lop == FUNC0(&lfp->lf_lock) ||
		    new_lop->lo_first <= lop->lo_first) {
			FUNC3(&lfp->lf_lock, new_lop, lo_lckfile);
		} else {
			nlop = FUNC4(lop, lo_lckfile);
			while (nlop != FUNC0(&lfp->lf_lock) &&
			       nlop->lo_first < new_lop->lo_first) {
				lop = nlop;
				nlop = FUNC4(lop, lo_lckfile);
			}
			FUNC2(lop, new_lop, lo_lckfile);
		}
	} else {
		new_lop->lo_lckfile.le_prev = NULL;	/* list not used */
	}

	/*
	 * Insert after insert_lop, which is overloaded as stp or lfp for
	 * an empty list.
	 */
	if (stp == NULL && (struct nfslockfile *)insert_lop == lfp)
		FUNC3(&lfp->lf_locallock, new_lop, lo_lckowner);
	else if ((struct nfsstate *)insert_lop == stp)
		FUNC3(&stp->ls_lock, new_lop, lo_lckowner);
	else
		FUNC2(insert_lop, new_lop, lo_lckowner);
	if (stp != NULL) {
		nfsstatsv1.srvlocks++;
		nfsrv_openpluslock++;
	}
}