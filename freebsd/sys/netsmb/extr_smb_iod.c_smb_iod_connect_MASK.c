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
struct thread {int dummy; } ;
struct smbiod {int iod_state; int /*<<< orphan*/  iod_scred; int /*<<< orphan*/  iod_flags; struct thread* iod_td; struct smb_vc* iod_vc; } ;
struct smb_vc {int /*<<< orphan*/  vc_paddr; scalar_t__ vc_laddr; int /*<<< orphan*/  vc_genid; } ;

/* Variables and functions */
 int EISCONN ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
#define  SMBIOD_ST_DEAD 129 
 int SMBIOD_ST_TRANACTIVE ; 
#define  SMBIOD_ST_VCACTIVE 128 
 int /*<<< orphan*/  SMBTP_SELECTID ; 
 scalar_t__ FUNC2 (struct smb_vc*,scalar_t__,struct thread*) ; 
 scalar_t__ FUNC3 (struct smb_vc*,int /*<<< orphan*/ ,struct thread*) ; 
 scalar_t__ FUNC4 (struct smb_vc*,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_vc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC7 (struct smbiod*) ; 
 scalar_t__ FUNC8 (struct smb_vc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct smb_vc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct smbiod *iod)
{
	struct smb_vc *vcp = iod->iod_vc;
	struct thread *td = iod->iod_td;
	int error;

	FUNC1("%d\n", iod->iod_state);
	switch(iod->iod_state) {
	    case SMBIOD_ST_VCACTIVE:
		FUNC0("called for already opened connection\n");
		return EISCONN;
	    case SMBIOD_ST_DEAD:
		return ENOTCONN;	/* XXX: last error code ? */
	    default:
		break;
	}
	vcp->vc_genid++;
	error = 0;

	error = (int)FUNC4(vcp, td);
	if (error)
		goto fail;
	FUNC1("tcreate\n");
	if (vcp->vc_laddr) {
		error = (int)FUNC2(vcp, vcp->vc_laddr, td);
		if (error)
			goto fail;
	}
	FUNC1("tbind\n");
	error = (int)FUNC3(vcp, vcp->vc_paddr, td);
	if (error)
		goto fail;
	FUNC5(vcp, SMBTP_SELECTID, &iod->iod_flags);
	iod->iod_state = SMBIOD_ST_TRANACTIVE;
	FUNC1("tconnect\n");
	/* vcp->vc_mid = 0;*/
	error = (int)FUNC8(vcp, &iod->iod_scred);
	if (error)
		goto fail;
	FUNC1("snegotiate\n");
	error = (int)FUNC9(vcp, &iod->iod_scred);
	if (error)
		goto fail;
	iod->iod_state = SMBIOD_ST_VCACTIVE;
	FUNC1("completed\n");
	FUNC7(iod);
	return (0);

 fail:
	FUNC6(iod);
	return (error);
}