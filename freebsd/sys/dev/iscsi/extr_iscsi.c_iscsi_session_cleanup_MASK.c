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
struct iscsi_session {int is_simq_frozen; int /*<<< orphan*/ * is_devq; int /*<<< orphan*/ * is_sim; int /*<<< orphan*/ * is_path; int /*<<< orphan*/  is_postponed; } ;
struct icl_pdu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  CAM_DEV_NOT_THERE ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct icl_pdu* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct icl_pdu*) ; 
 int /*<<< orphan*/  ip_next ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC14(struct iscsi_session *is, bool destroy_sim)
{
	struct icl_pdu *pdu;

	FUNC1(is);

	/*
	 * Don't queue any new PDUs.
	 */
	if (is->is_sim != NULL && is->is_simq_frozen == false) {
		FUNC0(is, "freezing");
		FUNC12(is->is_sim, 1);
		is->is_simq_frozen = true;
	}

	/*
	 * Remove postponed PDUs.
	 */
	if (!FUNC2(&is->is_postponed))
		FUNC13(is->is_sim, 1);
	while ((pdu = FUNC3(&is->is_postponed)) != NULL) {
		FUNC4(&is->is_postponed, ip_next);
		FUNC7(pdu);
	}

	if (destroy_sim == false) {
		/*
		 * Terminate SCSI tasks, asking CAM to requeue them.
		 */
		FUNC8(is, CAM_REQUEUE_REQ);
		return;
	}

	FUNC8(is, CAM_DEV_NOT_THERE);

	if (is->is_sim == NULL)
		return;

	FUNC0(is, "deregistering SIM");
	FUNC9(AC_LOST_DEVICE, is->is_path, NULL);

	if (is->is_simq_frozen) {
		FUNC13(is->is_sim, 1);
		is->is_simq_frozen = false;
	}

	FUNC11(is->is_path);
	is->is_path = NULL;
	FUNC10(FUNC6(is->is_sim));
	FUNC5(is->is_sim, TRUE /*free_devq*/);
	is->is_sim = NULL;
	is->is_devq = NULL;
}