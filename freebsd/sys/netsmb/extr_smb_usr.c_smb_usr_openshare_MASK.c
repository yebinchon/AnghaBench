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
struct smbioc_oshare {int ioc_opt; } ;
struct smb_vc {int dummy; } ;
struct smb_sharespec {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 int SMBSOPT_CREATE ; 
 int FUNC0 (struct smb_vc*,struct smb_sharespec*,struct smb_cred*,struct smb_share**) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*,struct smb_cred*) ; 
 int FUNC2 (struct smb_share*,struct smb_cred*) ; 
 int FUNC3 (struct smbioc_oshare*,struct smb_sharespec*) ; 
 int FUNC4 (struct smb_vc*,struct smb_sharespec*,struct smb_cred*,struct smb_share**) ; 

int
FUNC5(struct smb_vc *vcp, struct smbioc_oshare *dp,
	struct smb_cred *scred, struct smb_share **sspp)
{
	struct smb_share *ssp;
	struct smb_sharespec shspec;
	int error;

	error = FUNC3(dp, &shspec);
	if (error)
		return error;
	error = FUNC4(vcp, &shspec, scred, &ssp);
	if (error == 0) {
		*sspp = ssp;
		return 0;
	}
	if ((dp->ioc_opt & SMBSOPT_CREATE) == 0)
		return error;
	error = FUNC0(vcp, &shspec, scred, &ssp);
	if (error)
		return error;
	error = FUNC2(ssp, scred);
	if (error) {
		FUNC1(ssp, scred);
	} else
		*sspp = ssp;
	return error;
}