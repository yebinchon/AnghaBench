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
struct statfs {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SMB_DIALECT_LANMAN2_0 ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 scalar_t__ FUNC2 (struct smb_share*,struct statfs*,struct smb_cred*) ; 
 int FUNC3 (struct smb_share*,struct statfs*,struct smb_cred*) ; 
 scalar_t__ FUNC4 (struct smb_share*,struct statfs*,struct smb_cred*) ; 

int
FUNC5(struct smb_share *ssp, struct statfs *sbp,
	struct smb_cred *scred)
{

	if (FUNC0(FUNC1(ssp)) >= SMB_DIALECT_LANMAN2_0) {
		if (FUNC4(ssp, sbp, scred) == 0)
			return (0);
		if (FUNC2(ssp, sbp, scred) == 0)
			return (0);
	}
	return (FUNC3(ssp, sbp, scred));
}