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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct ucred {int dummy; } ;
struct nfsnode {TYPE_1__* n_v4; } ;
struct nfsmount {int /*<<< orphan*/  nm_mountp; } ;
struct nfsclopen {int dummy; } ;
struct nfscldeleg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  n4_namelen; int /*<<< orphan*/  n4_fhlen; int /*<<< orphan*/  n4_data; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct nfsnode**) ; 
 int FUNC3 (struct nfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct nfsclopen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfscldeleg**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nfsmount *nmp, u_int8_t *fhp, int fhlen,
    u_int32_t mode, struct nfsclopen *op, struct nfscldeleg **dpp,
    struct ucred *cred, NFSPROC_T *p)
{
	struct nfsnode *np;
	vnode_t vp;
	int error;

	error = FUNC2(nmp->nm_mountp, fhp, fhlen, p, &np);
	if (error)
		return (error);
	vp = FUNC1(np);
	if (np->n_v4 != NULL) {
		error = FUNC3(nmp, vp, np->n_v4->n4_data,
		    np->n_v4->n4_fhlen, fhp, fhlen, mode, op,
		    FUNC0(np->n_v4), np->n_v4->n4_namelen, dpp, 0, 0,
		    cred, p);
	} else {
		error = EINVAL;
	}
	FUNC4(vp);
	return (error);
}