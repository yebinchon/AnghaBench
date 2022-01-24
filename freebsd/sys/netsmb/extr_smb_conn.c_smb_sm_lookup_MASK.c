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
struct smb_vcspec {int flags; struct smb_share* ssp; } ;
struct smb_vc {int dummy; } ;
struct smb_sharespec {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int SMBV_CREATE ; 
 int FUNC0 (struct smb_vc*,struct smb_sharespec*,struct smb_cred*,struct smb_share**) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*,struct smb_cred*) ; 
 int FUNC2 () ; 
 int FUNC3 (struct smb_vcspec*,struct smb_sharespec*,struct smb_cred*,struct smb_vc**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct smb_share*,struct smb_cred*) ; 
 int FUNC6 (struct smb_vc*,struct smb_cred*) ; 
 int FUNC7 (struct smb_vcspec*,struct smb_cred*,struct smb_vc**) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_vc*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_vc*,struct smb_cred*) ; 

int
FUNC10(struct smb_vcspec *vcspec, struct smb_sharespec *shspec,
	struct smb_cred *scred,	struct smb_vc **vcpp)
{
	struct smb_vc *vcp;
	struct smb_share *ssp = NULL;
	int error;

	*vcpp = vcp = NULL;

	error = FUNC2();
	if (error)
		return error;
	error = FUNC3(vcspec, shspec, scred, vcpp);
	if (error == 0 || (vcspec->flags & SMBV_CREATE) == 0) {
		FUNC4();
		return error;
	}
	error = FUNC3(vcspec, NULL, scred, &vcp);
	if (error) {
		error = FUNC7(vcspec, scred, &vcp);
		if (error)
			goto out;
		error = FUNC6(vcp, scred);
		if (error)
			goto out;
	}
	if (shspec == NULL)
		goto out;
	error = FUNC0(vcp, shspec, scred, &ssp);
	if (error)
		goto out;
	error = FUNC5(ssp, scred);
	if (error == 0)
		vcspec->ssp = ssp;
	else
		FUNC1(ssp, scred);
out:
	FUNC4();
	if (error == 0)
		*vcpp = vcp;
	else if (vcp) {
		FUNC8(vcp);
		FUNC9(vcp, scred);
	}
	return error;
}