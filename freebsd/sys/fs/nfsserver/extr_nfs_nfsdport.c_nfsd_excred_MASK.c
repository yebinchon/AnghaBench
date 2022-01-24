#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ucred {scalar_t__ cr_uid; int /*<<< orphan*/  cr_groups; int /*<<< orphan*/  cr_ngroups; int /*<<< orphan*/  cr_gid; } ;
struct nfsrv_descript {int nd_flag; scalar_t__ nd_procnum; TYPE_1__* nd_cred; } ;
struct nfsexstuff {int /*<<< orphan*/  nes_exflag; } ;
struct TYPE_4__ {scalar_t__ cr_uid; int /*<<< orphan*/  cr_gid; } ;

/* Variables and functions */
 int AUTH_TOOWEAK ; 
 int /*<<< orphan*/  MNT_EXPORTANON ; 
 int ND_AUTHNONE ; 
 int ND_GSS ; 
 int ND_NFSV4 ; 
 int NFSERR_AUTHERR ; 
 int NFSERR_PROGNOTV4 ; 
 int NFSERR_WRONGSEC ; 
 int /*<<< orphan*/  FUNC0 (int,struct nfsrv_descript*) ; 
 scalar_t__ NFSPROC_FSINFO ; 
 scalar_t__ NFSV4OP_SECINFO ; 
 scalar_t__ FUNC1 (struct nfsexstuff*) ; 
 scalar_t__ FUNC2 (struct nfsexstuff*) ; 
 scalar_t__ FUNC3 (struct nfsexstuff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct nfsrv_descript*,struct nfsexstuff*) ; 

int
FUNC7(struct nfsrv_descript *nd, struct nfsexstuff *exp,
    struct ucred *credanon)
{
	int error = 0;

	/*
	 * Check/setup credentials.
	 */
	if (nd->nd_flag & ND_GSS)
		exp->nes_exflag &= ~MNT_EXPORTANON;

	/*
	 * Check to see if the operation is allowed for this security flavor.
	 * RFC2623 suggests that the NFSv3 Fsinfo RPC be allowed to
	 * AUTH_NONE or AUTH_SYS for file systems requiring RPCSEC_GSS.
	 * Also, allow Secinfo, so that it can acquire the correct flavor(s).
	 */
	if (FUNC6(nd, exp) &&
	    nd->nd_procnum != NFSV4OP_SECINFO &&
	    nd->nd_procnum != NFSPROC_FSINFO) {
		if (nd->nd_flag & ND_NFSV4)
			error = NFSERR_WRONGSEC;
		else
			error = (NFSERR_AUTHERR | AUTH_TOOWEAK);
		goto out;
	}

	/*
	 * Check to see if the file system is exported V4 only.
	 */
	if (FUNC3(exp) && !(nd->nd_flag & ND_NFSV4)) {
		error = NFSERR_PROGNOTV4;
		goto out;
	}

	/*
	 * Now, map the user credentials.
	 * (Note that ND_AUTHNONE will only be set for an NFSv3
	 *  Fsinfo RPC. If set for anything else, this code might need
	 *  to change.)
	 */
	if (FUNC2(exp)) {
		if (((nd->nd_flag & ND_GSS) == 0 && nd->nd_cred->cr_uid == 0) ||
		     FUNC1(exp) ||
		     (nd->nd_flag & ND_AUTHNONE) != 0) {
			nd->nd_cred->cr_uid = credanon->cr_uid;
			nd->nd_cred->cr_gid = credanon->cr_gid;
			FUNC4(nd->nd_cred, credanon->cr_ngroups,
			    credanon->cr_groups);
		} else if ((nd->nd_flag & ND_GSS) == 0) {
			/*
			 * If using AUTH_SYS, call nfsrv_getgrpscred() to see
			 * if there is a replacement credential with a group
			 * list set up by "nfsuserd -manage-gids".
			 * If there is no replacement, nfsrv_getgrpscred()
			 * simply returns its argument.
			 */
			nd->nd_cred = FUNC5(nd->nd_cred);
		}
	}

out:
	FUNC0(error, nd);
	return (error);
}