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
struct smb_vc {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_dev {scalar_t__ refcount; struct smb_vc* sd_vc; struct smb_share* sd_share; } ;
struct smb_cred {scalar_t__ refcount; struct smb_vc* sd_vc; struct smb_share* sd_share; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_NSMBDEV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (struct smb_dev*,int /*<<< orphan*/ ) ; 
 struct smb_dev* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_share*,struct smb_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_vc*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_vc*,struct smb_dev*) ; 

void
FUNC10(struct smb_dev *sdp)
{
	struct smb_vc *vcp;
	struct smb_share *ssp;
	struct smb_cred *scred;

	FUNC1();
	if (!sdp)
		FUNC4("No smb_dev upon device close");
	FUNC0(sdp->refcount > 0);
	sdp->refcount--;
	if (sdp->refcount) 
		return;
	scred = FUNC3(sizeof(struct smb_cred), M_NSMBDEV, M_WAITOK);
	FUNC5(scred, curthread, NULL);
	ssp = sdp->sd_share;
	if (ssp != NULL) {
		FUNC6(ssp);
		FUNC7(ssp, scred);
	}
	vcp = sdp->sd_vc;
	if (vcp != NULL) {
		FUNC8(vcp);
		FUNC9(vcp, scred);
	}
	FUNC2(scred, M_NSMBDEV);
	FUNC2(sdp, M_NSMBDEV);
	return;
}