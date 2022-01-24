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
typedef  int /*<<< orphan*/  vnode_t ;
struct nfsstate {scalar_t__ ls_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  srvlockowners; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSDSTATE ; 
 int /*<<< orphan*/  FUNC1 (struct nfsstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ls_hash ; 
 int /*<<< orphan*/  ls_list ; 
 int /*<<< orphan*/  FUNC2 (struct nfsstate*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsrv_openpluslock ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__ nfsstatsv1 ; 

__attribute__((used)) static void
FUNC4(struct nfsstate *stp, vnode_t vp, int cansleep,
    NFSPROC_T *p)
{

	FUNC0(stp, ls_hash);
	FUNC0(stp, ls_list);
	FUNC2(stp, vp, cansleep, p);
	if (stp->ls_op)
		FUNC3(stp->ls_op);
	FUNC1(stp, M_NFSDSTATE);
	nfsstatsv1.srvlockowners--;
	nfsrv_openpluslock--;
}