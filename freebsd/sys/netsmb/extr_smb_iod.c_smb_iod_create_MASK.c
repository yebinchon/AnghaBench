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
struct TYPE_2__ {int /*<<< orphan*/  tv_sec; } ;
struct smbiod {int iod_sleeptimo; int /*<<< orphan*/  iod_evlock; int /*<<< orphan*/  iod_rqlock; scalar_t__ iod_id; int /*<<< orphan*/  iod_p; int /*<<< orphan*/  iod_evlist; int /*<<< orphan*/  iod_rqlist; int /*<<< orphan*/  iod_lastrqsent; TYPE_1__ iod_pingtimo; struct smb_vc* iod_vc; int /*<<< orphan*/  iod_state; } ;
struct smb_vc {struct smbiod* vc_iod; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMBIOD ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  RFNOWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SMBIOD_PING_TIMO ; 
 int SMBIOD_SLEEP_TIMO ; 
 int /*<<< orphan*/  SMBIOD_ST_NOTCONN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct smbiod*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int FUNC5 (int /*<<< orphan*/ ,struct smbiod*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  smb_iod_next ; 
 int /*<<< orphan*/  smb_iod_thread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct smbiod* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct smb_vc *vcp)
{
	struct smbiod *iod;
	int error;

	iod = FUNC8(sizeof(*iod), M_SMBIOD, M_WAITOK);
	iod->iod_id = smb_iod_next++;
	iod->iod_state = SMBIOD_ST_NOTCONN;
	iod->iod_vc = vcp;
	iod->iod_sleeptimo = hz * SMBIOD_SLEEP_TIMO;
	iod->iod_pingtimo.tv_sec = SMBIOD_PING_TIMO;
	FUNC4(&iod->iod_lastrqsent);
	vcp->vc_iod = iod;
	FUNC7(&iod->iod_rqlock, "90rql");
	FUNC2(&iod->iod_rqlist);
	FUNC7(&iod->iod_evlock, "90evl");
	FUNC1(&iod->iod_evlist);
	error = FUNC5(smb_iod_thread, iod, &iod->iod_p,
	    RFNOWAIT, 0, "smbiod%d", iod->iod_id);
	if (error) {
		FUNC0("can't start smbiod: %d", error);
		vcp->vc_iod = NULL;
		FUNC6(&iod->iod_rqlock);
		FUNC6(&iod->iod_evlock);
		FUNC3(iod, M_SMBIOD);
		return error;
	}
	return 0;
}