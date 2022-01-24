#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vfs_state {int /*<<< orphan*/  vs_vnlocked; int /*<<< orphan*/  vs_vp; TYPE_2__* vs_mp; } ;
struct ucred {scalar_t__ cr_uid; } ;
struct svc_req {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nlm_host {int /*<<< orphan*/  nh_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  fh_fid; int /*<<< orphan*/  fh_fsid; } ;
typedef  TYPE_1__ fhandle_t ;
typedef  scalar_t__ accmode_t ;
struct TYPE_7__ {int mnt_flag; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 int ESTALE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int MNT_EXPORTANON ; 
 int MNT_EXRDONLY ; 
 int MNT_RDONLY ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (TYPE_2__*,struct sockaddr*,int*,struct ucred**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ VWRITE ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC5 (struct vfs_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_req*,struct ucred**,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct nlm_host *host, struct svc_req *rqstp,
    fhandle_t *fhp, struct vfs_state *vs, accmode_t accmode)
{
	int error, exflags;
	struct ucred *cred = NULL, *credanon = NULL;
	
	FUNC5(vs, 0, sizeof(*vs));

	vs->vs_mp = FUNC7(&fhp->fh_fsid);
	if (!vs->vs_mp) {
		return (ESTALE);
	}

	/* accmode == 0 means don't check, since it is an unlock. */
	if (accmode != 0) {
		error = FUNC0(vs->vs_mp,
		    (struct sockaddr *)&host->nh_addr, &exflags, &credanon,
		    NULL, NULL);
		if (error)
			goto out;

		if (exflags & MNT_EXRDONLY ||
		    (vs->vs_mp->mnt_flag & MNT_RDONLY)) {
			error = EROFS;
			goto out;
		}
	}

	error = FUNC1(vs->vs_mp, &fhp->fh_fid, LK_EXCLUSIVE, &vs->vs_vp);
	if (error)
		goto out;
	vs->vs_vnlocked = TRUE;

	if (accmode != 0) {
		if (!FUNC6(rqstp, &cred, NULL)) {
			error = EINVAL;
			goto out;
		}
		if (cred->cr_uid == 0 || (exflags & MNT_EXPORTANON)) {
			FUNC4(cred);
			cred = credanon;
			credanon = NULL;
		}

		/*
		 * Check cred.
		 */
		error = FUNC2(vs->vs_vp, accmode, cred, curthread);
		/*
		 * If this failed and accmode != VWRITE, try again with
		 * VWRITE to maintain backwards compatibility with the
		 * old code that always used VWRITE.
		 */
		if (error != 0 && accmode != VWRITE)
			error = FUNC2(vs->vs_vp, VWRITE, cred, curthread);
		if (error)
			goto out;
	}

#if __FreeBSD_version < 800011
	FUNC3(vs->vs_vp, 0, curthread);
#else
	VOP_UNLOCK(vs->vs_vp, 0);
#endif
	vs->vs_vnlocked = FALSE;

out:
	if (cred)
		FUNC4(cred);
	if (credanon)
		FUNC4(credanon);

	return (error);
}