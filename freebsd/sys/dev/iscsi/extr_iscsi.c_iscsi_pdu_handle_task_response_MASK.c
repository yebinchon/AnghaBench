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
struct iscsi_session {int dummy; } ;
struct iscsi_outstanding {scalar_t__ io_datasn; int /*<<< orphan*/ * io_ccb; } ;
struct iscsi_bhs_task_management_response {scalar_t__ bhstmr_initiator_task_tag; scalar_t__ bhstmr_response; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;

/* Variables and functions */
 scalar_t__ BHSTMR_RESPONSE_FUNCTION_COMPLETE ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,scalar_t__) ; 
 struct iscsi_session* FUNC1 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC2 (struct icl_pdu*) ; 
 struct iscsi_outstanding* FUNC3 (struct iscsi_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_session*,struct iscsi_outstanding*) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_session*,struct iscsi_outstanding*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct icl_pdu *response)
{
	struct iscsi_bhs_task_management_response *bhstmr;
	struct iscsi_outstanding *io, *aio;
	struct iscsi_session *is;

	is = FUNC1(response);

	bhstmr = (struct iscsi_bhs_task_management_response *)response->ip_bhs;
	io = FUNC3(is, bhstmr->bhstmr_initiator_task_tag);
	if (io == NULL || io->io_ccb != NULL) {
		FUNC0(is, "bad itt 0x%x",
		    bhstmr->bhstmr_initiator_task_tag);
		FUNC2(response);
		FUNC5(is);
		return;
	}

	if (bhstmr->bhstmr_response != BHSTMR_RESPONSE_FUNCTION_COMPLETE) {
		FUNC0(is, "task response 0x%x",
		    bhstmr->bhstmr_response);
	} else {
		aio = FUNC3(is, io->io_datasn);
		if (aio != NULL && aio->io_ccb != NULL)
			FUNC6(is, aio, CAM_REQ_ABORTED);
	}

	FUNC4(is, io);
	FUNC2(response);
}