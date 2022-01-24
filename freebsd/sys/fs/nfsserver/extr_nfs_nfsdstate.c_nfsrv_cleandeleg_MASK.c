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
typedef  int /*<<< orphan*/  vnode_t ;
struct nfsstate {struct nfsclient* ls_clp; } ;
struct nfslockfile {int /*<<< orphan*/  lf_deleg; } ;
struct nfsclient {int dummy; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 struct nfsstate* FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfsstate* FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfsstate* FUNC2 (struct nfsstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ls_file ; 
 int FUNC4 (struct nfsstate*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(vnode_t vp, struct nfslockfile *lfp,
    struct nfsclient *clp, int *haslockp, NFSPROC_T *p)
{
	struct nfsstate *stp, *nstp;
	int ret = 0;

	stp = FUNC1(&lfp->lf_deleg);
	while (stp != FUNC0(&lfp->lf_deleg)) {
		nstp = FUNC2(stp, ls_file);
		if (stp->ls_clp != clp) {
			ret = FUNC4(stp, haslockp, p, vp);
			if (ret) {
				/*
				 * nfsrv_delegconflict() unlocks state
				 * when it returns non-zero.
				 */
				goto out;
			}
		}
		stp = nstp;
	}
out:
	FUNC3(ret);
	return (ret);
}