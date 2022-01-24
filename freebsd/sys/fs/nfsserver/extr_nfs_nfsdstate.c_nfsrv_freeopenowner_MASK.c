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
struct nfsstate {scalar_t__ ls_op; int /*<<< orphan*/  ls_open; } ;
struct TYPE_2__ {int /*<<< orphan*/  srvopenowners; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 struct nfsstate* FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfsstate* FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfsstate* FUNC2 (struct nfsstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSDSTATE ; 
 int /*<<< orphan*/  FUNC4 (struct nfsstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ls_list ; 
 int /*<<< orphan*/  FUNC5 (struct nfsstate*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsrv_openpluslock ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 TYPE_1__ nfsstatsv1 ; 

__attribute__((used)) static void
FUNC7(struct nfsstate *stp, int cansleep, NFSPROC_T *p)
{
	struct nfsstate *nstp, *tstp;

	FUNC3(stp, ls_list);
	/*
	 * Now, free all associated opens.
	 */
	nstp = FUNC1(&stp->ls_open);
	while (nstp != FUNC0(&stp->ls_open)) {
		tstp = nstp;
		nstp = FUNC2(nstp, ls_list);
		(void) FUNC5(tstp, NULL, cansleep, p);
	}
	if (stp->ls_op)
		FUNC6(stp->ls_op);
	FUNC4(stp, M_NFSDSTATE);
	nfsstatsv1.srvopenowners--;
	nfsrv_openpluslock--;
}