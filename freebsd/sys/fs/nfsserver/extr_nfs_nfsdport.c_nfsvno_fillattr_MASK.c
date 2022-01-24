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
typedef  int /*<<< orphan*/  uint64_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct statfs {int dummy; } ;
struct nfsvattr {int /*<<< orphan*/  na_vattr; } ;
struct nfsrv_descript {int dummy; } ;
struct mount {int dummy; } ;
typedef  int /*<<< orphan*/  nfsattrbit_t ;
typedef  int /*<<< orphan*/  fhandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NFSATTRBIT_SPACEAVAIL ; 
 int /*<<< orphan*/  NFSATTRBIT_SPACEFREE ; 
 int /*<<< orphan*/  NFSATTRBIT_SPACETOTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfsrv_descript*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct statfs*,int /*<<< orphan*/ ) ; 
 struct statfs* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nfsrv_devidcnt ; 
 int FUNC4 (struct statfs*,struct mount*) ; 
 int FUNC5 (struct nfsrv_descript*,struct mount*,struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct ucred*,struct thread*,int,int,int,int,int /*<<< orphan*/ ,struct statfs*) ; 

int
FUNC6(struct nfsrv_descript *nd, struct mount *mp, struct vnode *vp,
    struct nfsvattr *nvap, fhandle_t *fhp, int rderror, nfsattrbit_t *attrbitp,
    struct ucred *cred, struct thread *p, int isdgram, int reterr,
    int supports_nfsv4acls, int at_root, uint64_t mounted_on_fileno)
{
	struct statfs *sf;
	int error;

	sf = NULL;
	if (nfsrv_devidcnt > 0 &&
	    (FUNC1(attrbitp, NFSATTRBIT_SPACEAVAIL) ||
	     FUNC1(attrbitp, NFSATTRBIT_SPACEFREE) ||
	     FUNC1(attrbitp, NFSATTRBIT_SPACETOTAL))) {
		sf = FUNC3(sizeof(*sf), M_TEMP, M_WAITOK | M_ZERO);
		error = FUNC4(sf, mp);
		if (error != 0) {
			FUNC2(sf, M_TEMP);
			sf = NULL;
		}
	}
	error = FUNC5(nd, mp, vp, NULL, &nvap->na_vattr, fhp, rderror,
	    attrbitp, cred, p, isdgram, reterr, supports_nfsv4acls, at_root,
	    mounted_on_fileno, sf);
	FUNC2(sf, M_TEMP);
	FUNC0(0, nd);
	return (error);
}