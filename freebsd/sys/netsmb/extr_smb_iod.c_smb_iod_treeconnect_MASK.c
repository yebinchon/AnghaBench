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
struct smbiod {scalar_t__ iod_state; int /*<<< orphan*/  iod_scred; } ;
struct smb_share {int /*<<< orphan*/  ss_vcgenid; int /*<<< orphan*/  ss_flags; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ SMBIOD_ST_DEAD ; 
 scalar_t__ SMBIOD_ST_RECONNECT ; 
 scalar_t__ SMBIOD_ST_VCACTIVE ; 
 int /*<<< orphan*/  SMBS_RECONNECTING ; 
 int /*<<< orphan*/  FUNC1 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_share*) ; 
 int FUNC3 (struct smbiod*) ; 
 int FUNC4 (struct smb_share*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct smbiod *iod, struct smb_share *ssp)
{
	int error;

	if (iod->iod_state != SMBIOD_ST_VCACTIVE) {
		if (iod->iod_state != SMBIOD_ST_DEAD)
			return ENOTCONN;
		iod->iod_state = SMBIOD_ST_RECONNECT;
		error = FUNC3(iod);
		if (error)
			return error;
	}
	FUNC0("tree reconnect\n");
	FUNC1(ssp);
	ssp->ss_flags |= SMBS_RECONNECTING;
	FUNC2(ssp);
	error = FUNC4(ssp, &iod->iod_scred);
	FUNC1(ssp);
	ssp->ss_flags &= ~SMBS_RECONNECTING;
	FUNC2(ssp);
	FUNC5(&ssp->ss_vcgenid);
	return error;
}