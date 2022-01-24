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
struct nfsusrgrp {int /*<<< orphan*/ * lug_cred; int /*<<< orphan*/  lug_namelen; int /*<<< orphan*/  lug_name; int /*<<< orphan*/  lug_gid; int /*<<< orphan*/  lug_uid; } ;
struct nfsrv_lughash {int /*<<< orphan*/  lughead; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_NFSUSERGROUP ; 
 struct nfsrv_lughash* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nfsrv_lughash* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfsrv_lughash* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfsrv_lughash* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct nfsusrgrp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfsusrgrp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lug_namehash ; 
 int /*<<< orphan*/  lug_numhash ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsrv_usercnt ; 

__attribute__((used)) static void
FUNC9(struct nfsusrgrp *usrp, int isuser)
{
	struct nfsrv_lughash *hp;

	if (isuser != 0) {
		hp = FUNC2(usrp->lug_uid);
		FUNC8(&hp->mtx, MA_OWNED);
		FUNC4(&hp->lughead, usrp, lug_numhash);
		hp = FUNC3(usrp->lug_name, usrp->lug_namelen);
		FUNC8(&hp->mtx, MA_OWNED);
		FUNC4(&hp->lughead, usrp, lug_namehash);
	} else {
		hp = FUNC0(usrp->lug_gid);
		FUNC8(&hp->mtx, MA_OWNED);
		FUNC4(&hp->lughead, usrp, lug_numhash);
		hp = FUNC1(usrp->lug_name, usrp->lug_namelen);
		FUNC8(&hp->mtx, MA_OWNED);
		FUNC4(&hp->lughead, usrp, lug_namehash);
	}
	FUNC5(&nfsrv_usercnt, -1);
	if (usrp->lug_cred != NULL)
		FUNC6(usrp->lug_cred);
	FUNC7(usrp, M_NFSUSERGROUP);
}