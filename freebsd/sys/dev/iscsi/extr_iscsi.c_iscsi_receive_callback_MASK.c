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
struct iscsi_session {int /*<<< orphan*/  is_login_cv; struct icl_pdu* is_login_pdu; scalar_t__ is_login_phase; } ;
struct icl_pdu {TYPE_1__* ip_bhs; } ;
struct TYPE_2__ {int bhs_opcode; } ;

/* Variables and functions */
#define  ISCSI_BHS_OPCODE_ASYNC_MESSAGE 135 
#define  ISCSI_BHS_OPCODE_LOGOUT_RESPONSE 134 
#define  ISCSI_BHS_OPCODE_NOP_IN 133 
#define  ISCSI_BHS_OPCODE_R2T 132 
#define  ISCSI_BHS_OPCODE_REJECT 131 
#define  ISCSI_BHS_OPCODE_SCSI_DATA_IN 130 
#define  ISCSI_BHS_OPCODE_SCSI_RESPONSE 129 
#define  ISCSI_BHS_OPCODE_TASK_RESPONSE 128 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_session*,char*,int) ; 
 struct iscsi_session* FUNC4 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC7 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC8 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC9 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC10 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC11 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC12 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC13 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC14 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC15 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC16 (struct iscsi_session*) ; 

__attribute__((used)) static void
FUNC17(struct icl_pdu *response)
{
	struct iscsi_session *is;

	is = FUNC4(response);

	FUNC0(is);

	FUNC15(response);

#ifdef ICL_KERNEL_PROXY
	if (is->is_login_phase) {
		if (is->is_login_pdu == NULL)
			is->is_login_pdu = response;
		else
			icl_pdu_free(response);
		ISCSI_SESSION_UNLOCK(is);
		cv_signal(&is->is_login_cv);
		return;
	}
#endif

	/*
	 * The handling routine is responsible for freeing the PDU
	 * when it's no longer needed.
	 */
	switch (response->ip_bhs->bhs_opcode) {
	case ISCSI_BHS_OPCODE_NOP_IN:
		FUNC10(response);
		FUNC2(is);
		break;
	case ISCSI_BHS_OPCODE_SCSI_RESPONSE:
		FUNC13(response);
		/* Session lock dropped inside. */
		FUNC1(is);
		break;
	case ISCSI_BHS_OPCODE_TASK_RESPONSE:
		FUNC14(response);
		FUNC2(is);
		break;
	case ISCSI_BHS_OPCODE_SCSI_DATA_IN:
		FUNC8(response);
		/* Session lock dropped inside. */
		FUNC1(is);
		break;
	case ISCSI_BHS_OPCODE_LOGOUT_RESPONSE:
		FUNC9(response);
		FUNC2(is);
		break;
	case ISCSI_BHS_OPCODE_R2T:
		FUNC11(response);
		FUNC2(is);
		break;
	case ISCSI_BHS_OPCODE_ASYNC_MESSAGE:
		FUNC7(response);
		FUNC2(is);
		break;
	case ISCSI_BHS_OPCODE_REJECT:
		FUNC12(response);
		FUNC2(is);
		break;
	default:
		FUNC3(is, "received PDU with unsupported "
		    "opcode 0x%x; reconnecting",
		    response->ip_bhs->bhs_opcode);
		FUNC16(is);
		FUNC2(is);
		FUNC6(response);
	}
}