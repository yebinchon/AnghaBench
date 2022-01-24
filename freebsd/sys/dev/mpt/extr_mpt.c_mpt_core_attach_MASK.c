#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  inots; int /*<<< orphan*/  atios; } ;
struct mpt_softc {int failure_id; int /*<<< orphan*/  scsi_tgt_handler_id; TYPE_2__ trt_wildcard; TYPE_1__* trt; int /*<<< orphan*/  request_timeout_list; int /*<<< orphan*/  request_free_list; int /*<<< orphan*/  request_pending_list; int /*<<< orphan*/  ack_frames; } ;
struct TYPE_3__ {int /*<<< orphan*/  inots; int /*<<< orphan*/  atios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MPT_HANDLER_ID_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int MPT_MAX_LUNS ; 
 int /*<<< orphan*/  MPT_OFFSET_DOORBELL ; 
 int /*<<< orphan*/  MPT_PRT_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mpt_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mpt_softc*) ; 

__attribute__((used)) static int
FUNC10(struct mpt_softc *mpt)
{
        int val, error;

	FUNC0(&mpt->ack_frames);
	/* Put all request buffers on the free list */
	FUNC4(&mpt->request_pending_list);
	FUNC4(&mpt->request_free_list);
	FUNC4(&mpt->request_timeout_list);
	for (val = 0; val < MPT_MAX_LUNS; val++) {
		FUNC3(&mpt->trt[val].atios);
		FUNC3(&mpt->trt[val].inots);
	}
	FUNC3(&mpt->trt_wildcard.atios);
	FUNC3(&mpt->trt_wildcard.inots);
#ifdef	MPT_TEST_MULTIPATH
	mpt->failure_id = -1;
#endif
	mpt->scsi_tgt_handler_id = MPT_HANDLER_ID_NONE;
	FUNC9(mpt);
	FUNC7(mpt, MPT_PRT_DEBUG, "doorbell req = %s\n",
	    FUNC6(FUNC8(mpt, MPT_OFFSET_DOORBELL)));

	FUNC1(mpt);
	error = FUNC5(mpt, 0, 0);
	FUNC2(mpt);

	return (error);
}