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
typedef  scalar_t__ uid_t ;
struct ucred {scalar_t__ cr_uid; scalar_t__* cr_groups; } ;
struct smb_vc {int dummy; } ;
struct smb_sharespec {scalar_t__ owner; scalar_t__ group; int rights; int /*<<< orphan*/  stype; scalar_t__* pass; scalar_t__* name; } ;
struct TYPE_2__ {int /*<<< orphan*/  co_gone; int /*<<< orphan*/  co_free; } ;
struct smb_share {int ss_mode; scalar_t__ ss_grp; scalar_t__ ss_uid; int /*<<< orphan*/  ss_tid; int /*<<< orphan*/  ss_type; void* ss_pass; void* ss_name; int /*<<< orphan*/  ss_stlock; TYPE_1__ obj; } ;
struct smb_cred {struct ucred* scr_cred; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int EEXIST ; 
 int EPERM ; 
 int /*<<< orphan*/  M_SMBCONN ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SMBL_SHARE ; 
 scalar_t__ SMBM_ANY_GROUP ; 
 scalar_t__ SMBM_ANY_OWNER ; 
 int SMBM_MASK ; 
 int /*<<< orphan*/  SMB_TID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_vc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct ucred*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  smb_share_free ; 
 int /*<<< orphan*/  smb_share_gone ; 
 int /*<<< orphan*/  FUNC5 (struct smb_share*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (scalar_t__*) ; 
 scalar_t__ FUNC8 (struct ucred*) ; 
 int FUNC9 (struct smb_vc*,struct smb_sharespec*,struct smb_cred*,struct smb_share**) ; 
 struct smb_share* FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(struct smb_vc *vcp, struct smb_sharespec *shspec,
	struct smb_cred *scred, struct smb_share **sspp)
{
	struct smb_share *ssp;
	struct ucred *cred = scred->scr_cred;
	uid_t realuid = cred->cr_uid;
	uid_t uid = shspec->owner;
	gid_t gid = shspec->group;
	int error, isroot;

	isroot = FUNC8(cred) == 0;
	/*
	 * Only superuser can create shares with different uid and gid
	 */
	if (uid != SMBM_ANY_OWNER && uid != realuid && !isroot)
		return EPERM;
	if (gid != SMBM_ANY_GROUP && !FUNC2(gid, cred) && !isroot)
		return EPERM;
	error = FUNC9(vcp, shspec, scred, &ssp);
	if (!error) {
		FUNC5(ssp, scred);
		return EEXIST;
	}
	if (uid == SMBM_ANY_OWNER)
		uid = realuid;
	if (gid == SMBM_ANY_GROUP)
		gid = cred->cr_groups[0];
	ssp = FUNC10(sizeof(*ssp), M_SMBCONN, M_WAITOK);
	FUNC4(FUNC0(ssp), SMBL_SHARE, "smbss ilock", "smbss");
	ssp->obj.co_free = smb_share_free;
	ssp->obj.co_gone = smb_share_gone;
	FUNC6(&ssp->ss_stlock, "ssstlock");
	ssp->ss_name = FUNC7(shspec->name);
	if (shspec->pass && shspec->pass[0])
		ssp->ss_pass = FUNC7(shspec->pass);
	ssp->ss_type = shspec->stype;
	ssp->ss_tid = SMB_TID_UNKNOWN;
	ssp->ss_uid = uid;
	ssp->ss_grp = gid;
	ssp->ss_mode = shspec->rights & SMBM_MASK;
	FUNC3(FUNC1(vcp), FUNC0(ssp));
	*sspp = ssp;
	return 0;
}