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
struct iscsi_session {scalar_t__ is_statsn; scalar_t__ is_cmdsn; int /*<<< orphan*/  is_maxcmdsn; int /*<<< orphan*/  is_expcmdsn; } ;
struct iscsi_bhs_scsi_command {int bhssc_opcode; void* bhssc_expstatsn; void* bhssc_cmdsn; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;

/* Variables and functions */
 int ISCSI_BHS_OPCODE_IMMEDIATE ; 
 int ISCSI_BHS_OPCODE_SCSI_DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct iscsi_session* FUNC3 (struct icl_pdu*) ; 
 void* FUNC4 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC5(struct icl_pdu *request)
{
	struct iscsi_session *is;
	struct iscsi_bhs_scsi_command *bhssc;

	is = FUNC3(request);

	FUNC1(is);

	/*
	 * We're only using fields common for all the request
	 * (initiator -> target) PDUs.
	 */
	bhssc = (struct iscsi_bhs_scsi_command *)request->ip_bhs;

	/*
	 * Data-Out PDU does not contain CmdSN.
	 */
	if (bhssc->bhssc_opcode != ISCSI_BHS_OPCODE_SCSI_DATA_OUT) {
		if (FUNC2(is->is_cmdsn, is->is_maxcmdsn) &&
		    (bhssc->bhssc_opcode & ISCSI_BHS_OPCODE_IMMEDIATE) == 0) {
			/*
			 * Current MaxCmdSN prevents us from sending any more
			 * SCSI Command PDUs to the target; postpone the PDU.
			 * It will get resent by either iscsi_pdu_queue(),
			 * or by maintenance thread.
			 */
#if 0
			ISCSI_SESSION_DEBUG(is, "postponing send, CmdSN %u, "
			    "ExpCmdSN %u, MaxCmdSN %u, opcode 0x%x",
			    is->is_cmdsn, is->is_expcmdsn, is->is_maxcmdsn,
			    bhssc->bhssc_opcode);
#endif
			return (true);
		}
		bhssc->bhssc_cmdsn = FUNC4(is->is_cmdsn);
		if ((bhssc->bhssc_opcode & ISCSI_BHS_OPCODE_IMMEDIATE) == 0)
			is->is_cmdsn++;
	}
	bhssc->bhssc_expstatsn = FUNC4(is->is_statsn + 1);

	return (false);
}