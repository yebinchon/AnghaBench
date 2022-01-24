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
struct smbiod {scalar_t__ iod_state; int /*<<< orphan*/  iod_scred; struct smb_vc* iod_vc; } ;
struct smb_vc {int /*<<< orphan*/  vc_smbuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ SMBIOD_ST_NOTCONN ; 
 scalar_t__ SMBIOD_ST_TRANACTIVE ; 
 scalar_t__ SMBIOD_ST_VCACTIVE ; 
 int /*<<< orphan*/  SMB_UID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_vc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct smbiod *iod)
{
	struct smb_vc *vcp = iod->iod_vc;

	FUNC0("\n");
	if (iod->iod_state == SMBIOD_ST_VCACTIVE) {
		FUNC2(vcp, &iod->iod_scred);
		iod->iod_state = SMBIOD_ST_TRANACTIVE;
	}
	vcp->vc_smbuid = SMB_UID_UNKNOWN;
	FUNC1(iod);
	iod->iod_state = SMBIOD_ST_NOTCONN;
	return 0;
}