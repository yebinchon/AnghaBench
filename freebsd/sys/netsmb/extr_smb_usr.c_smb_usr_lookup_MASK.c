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
struct smbioc_lookup {scalar_t__ ioc_level; int ioc_flags; int /*<<< orphan*/  ioc_sh; int /*<<< orphan*/  ioc_ssn; } ;
struct smb_vcspec {struct smb_share* ssp; int /*<<< orphan*/  flags; } ;
struct smb_vc {int dummy; } ;
struct smb_sharespec {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SMBLK_CREATE ; 
 scalar_t__ SMBL_SHARE ; 
 scalar_t__ SMBL_VC ; 
 int /*<<< orphan*/  SMBV_CREATE ; 
 int FUNC0 (struct smb_vcspec*,struct smb_sharespec*,struct smb_cred*,struct smb_vc**) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct smb_sharespec*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct smb_vcspec*) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_vcspec*) ; 

int
FUNC4(struct smbioc_lookup *dp, struct smb_cred *scred,
	struct smb_vc **vcpp, struct smb_share **sspp)
{
	struct smb_vc *vcp = NULL;
	struct smb_vcspec vspec;			/* XXX */
	struct smb_sharespec sspec, *sspecp = NULL;	/* XXX */
	int error;

	if (dp->ioc_level < SMBL_VC || dp->ioc_level > SMBL_SHARE)
		return EINVAL;
	error = FUNC2(&dp->ioc_ssn, &vspec);
	if (error)
		return error;
	if (dp->ioc_flags & SMBLK_CREATE)
		vspec.flags |= SMBV_CREATE;

	if (dp->ioc_level >= SMBL_SHARE) {
		error = FUNC1(&dp->ioc_sh, &sspec);
		if (error)
			goto out;
		sspecp = &sspec;
	}
	error = FUNC0(&vspec, sspecp, scred, &vcp);
	if (error == 0) {
		*vcpp = vcp;
		*sspp = vspec.ssp;
	}
out:
	FUNC3(&vspec);
	return error;
}