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
typedef  scalar_t__ uint32_t ;
struct iscsi_session {scalar_t__ is_statsn; scalar_t__ is_maxcmdsn; scalar_t__ is_expcmdsn; scalar_t__ is_timeout; int /*<<< orphan*/  is_maintenance_cv; int /*<<< orphan*/  is_postponed; } ;
struct iscsi_bhs_data_in {scalar_t__ bhsdi_opcode; int bhsdi_flags; int /*<<< orphan*/  bhsdi_maxcmdsn; int /*<<< orphan*/  bhsdi_expcmdsn; int /*<<< orphan*/  bhsdi_statsn; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;

/* Variables and functions */
 int BHSDI_FLAGS_S ; 
 scalar_t__ ISCSI_BHS_OPCODE_SCSI_DATA_IN ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 struct iscsi_session* FUNC5 (struct icl_pdu const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_session*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(const struct icl_pdu *response)
{
	const struct iscsi_bhs_data_in *bhsdi;
	struct iscsi_session *is;
	uint32_t expcmdsn, maxcmdsn, statsn;

	is = FUNC5(response);

	FUNC1(is);

	/*
	 * We're only using fields common for all the response
	 * (target -> initiator) PDUs.
	 */
	bhsdi = (const struct iscsi_bhs_data_in *)response->ip_bhs;
	/*
	 * Ok, I lied.  In case of Data-In, "The fields StatSN, Status,
	 * and Residual Count only have meaningful content if the S bit
	 * is set to 1", so we also need to check the bit specific for
	 * Data-In PDU.
	 */
	if (bhsdi->bhsdi_opcode != ISCSI_BHS_OPCODE_SCSI_DATA_IN ||
	    (bhsdi->bhsdi_flags & BHSDI_FLAGS_S) != 0) {
		statsn = FUNC9(bhsdi->bhsdi_statsn);
		if (statsn != is->is_statsn && statsn != (is->is_statsn + 1)) {
			/* XXX: This is normal situation for MCS */
			FUNC2(is, "PDU 0x%x StatSN %u != "
			    "session ExpStatSN %u (or + 1); reconnecting",
			    bhsdi->bhsdi_opcode, statsn, is->is_statsn);
			FUNC8(is);
		}
		if (FUNC3(statsn, is->is_statsn))
			is->is_statsn = statsn;
	}

	expcmdsn = FUNC9(bhsdi->bhsdi_expcmdsn);
	maxcmdsn = FUNC9(bhsdi->bhsdi_maxcmdsn);

	if (FUNC4(maxcmdsn + 1, expcmdsn)) {
		FUNC0(is,
		    "PDU MaxCmdSN %u + 1 < PDU ExpCmdSN %u; ignoring",
		    maxcmdsn, expcmdsn);
	} else {
		if (FUNC3(maxcmdsn, is->is_maxcmdsn)) {
			is->is_maxcmdsn = maxcmdsn;

			/*
			 * Command window increased; kick the maintanance thread
			 * to send out postponed commands.
			 */
			if (!FUNC6(&is->is_postponed))
				FUNC7(&is->is_maintenance_cv);
		} else if (FUNC4(maxcmdsn, is->is_maxcmdsn)) {
			/* XXX: This is normal situation for MCS */
			FUNC0(is,
			    "PDU MaxCmdSN %u < session MaxCmdSN %u; ignoring",
			    maxcmdsn, is->is_maxcmdsn);
		}

		if (FUNC3(expcmdsn, is->is_expcmdsn)) {
			is->is_expcmdsn = expcmdsn;
		} else if (FUNC4(expcmdsn, is->is_expcmdsn)) {
			/* XXX: This is normal situation for MCS */
			FUNC0(is,
			    "PDU ExpCmdSN %u < session ExpCmdSN %u; ignoring",
			    expcmdsn, is->is_expcmdsn);
		}
	}

	/*
	 * Every incoming PDU - not just NOP-In - resets the ping timer.
	 * The purpose of the timeout is to reset the connection when it stalls;
	 * we don't want this to happen when NOP-In or NOP-Out ends up delayed
	 * in some queue.
	 */
	is->is_timeout = 0;
}