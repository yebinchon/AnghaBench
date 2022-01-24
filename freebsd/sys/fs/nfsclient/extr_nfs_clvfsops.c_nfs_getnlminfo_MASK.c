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
struct sockaddr_storage {int dummy; } ;
typedef  struct sockaddr_storage uint8_t ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct nfsnode {int /*<<< orphan*/  n_size; TYPE_1__* n_fhp; } ;
struct nfsmount {int nm_timeo; TYPE_2__* nm_nam; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_4__ {int /*<<< orphan*/  sa_len; } ;
struct TYPE_3__ {scalar_t__ nfh_len; TYPE_2__* nfh_fh; } ;

/* Variables and functions */
 int NFS_HZ ; 
 int FUNC0 (struct vnode*) ; 
 struct nfsmount* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfsnode* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct sockaddr_storage*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct vnode *vp, uint8_t *fhp, size_t *fhlenp,
    struct sockaddr_storage *sp, int *is_v3p, off_t *sizep,
    struct timeval *timeop)
{
	struct nfsmount *nmp;
	struct nfsnode *np = FUNC2(vp);

	nmp = FUNC1(vp->v_mount);
	if (fhlenp != NULL)
		*fhlenp = (size_t)np->n_fhp->nfh_len;
	if (fhp != NULL)
		FUNC3(np->n_fhp->nfh_fh, fhp, np->n_fhp->nfh_len);
	if (sp != NULL)
		FUNC3(nmp->nm_nam, sp, FUNC4(nmp->nm_nam->sa_len, sizeof(*sp)));
	if (is_v3p != NULL)
		*is_v3p = FUNC0(vp);
	if (sizep != NULL)
		*sizep = np->n_size;
	if (timeop != NULL) {
		timeop->tv_sec = nmp->nm_timeo / NFS_HZ;
		timeop->tv_usec = (nmp->nm_timeo % NFS_HZ) * (1000000 / NFS_HZ);
	}
}