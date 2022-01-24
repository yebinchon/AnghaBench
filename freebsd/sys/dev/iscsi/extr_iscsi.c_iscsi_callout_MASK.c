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
struct TYPE_2__ {scalar_t__ isc_enable; } ;
struct iscsi_session {scalar_t__ is_timeout; scalar_t__ is_terminating; int /*<<< orphan*/  is_conn; scalar_t__ is_login_phase; scalar_t__ is_waiting_for_iscsid; TYPE_1__ is_conf; int /*<<< orphan*/  is_callout; } ;
struct iscsi_bhs_nop_out {int bhsno_opcode; int bhsno_flags; int bhsno_target_transfer_tag; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;

/* Variables and functions */
 int ISCSI_BHS_OPCODE_IMMEDIATE ; 
 int ISCSI_BHS_OPCODE_NOP_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*,char*,...) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int hz ; 
 struct icl_pdu* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_session*) ; 
 scalar_t__ iscsid_timeout ; 
 scalar_t__ login_timeout ; 
 scalar_t__ ping_timeout ; 

__attribute__((used)) static void
FUNC7(void *context)
{
	struct icl_pdu *request;
	struct iscsi_bhs_nop_out *bhsno;
	struct iscsi_session *is;
	bool reconnect_needed = false;

	is = context;

	FUNC0(is);
	if (is->is_terminating) {
		FUNC1(is);
		return;
	}

	FUNC3(&is->is_callout, 1 * hz);

	if (is->is_conf.isc_enable == 0)
		goto out;

	is->is_timeout++;

	if (is->is_waiting_for_iscsid) {
		if (iscsid_timeout > 0 && is->is_timeout > iscsid_timeout) {
			FUNC2(is, "timed out waiting for iscsid(8) "
			    "for %d seconds; reconnecting",
			    is->is_timeout);
			reconnect_needed = true;
		}
		goto out;
	}

	if (is->is_login_phase) {
		if (login_timeout > 0 && is->is_timeout > login_timeout) {
			FUNC2(is, "login timed out after %d seconds; "
			    "reconnecting", is->is_timeout);
			reconnect_needed = true;
		}
		goto out;
	}

	if (ping_timeout <= 0) {
		/*
		 * Pings are disabled.  Don't send NOP-Out in this case.
		 * Reset the timeout, to avoid triggering reconnection,
		 * should the user decide to reenable them.
		 */
		is->is_timeout = 0;
		goto out;
	}

	if (is->is_timeout >= ping_timeout) {
		FUNC2(is, "no ping reply (NOP-In) after %d seconds; "
		    "reconnecting", ping_timeout);
		reconnect_needed = true;
		goto out;
	}

	FUNC1(is);

	/*
	 * If the ping was reset less than one second ago - which means
	 * that we've received some PDU during the last second - assume
	 * the traffic flows correctly and don't bother sending a NOP-Out.
	 *
	 * (It's 2 - one for one second, and one for incrementing is_timeout
	 * earlier in this routine.)
	 */
	if (is->is_timeout < 2)
		return;

	request = FUNC4(is->is_conn, M_NOWAIT);
	if (request == NULL) {
		FUNC2(is, "failed to allocate PDU");
		return;
	}
	bhsno = (struct iscsi_bhs_nop_out *)request->ip_bhs;
	bhsno->bhsno_opcode = ISCSI_BHS_OPCODE_NOP_OUT |
	    ISCSI_BHS_OPCODE_IMMEDIATE;
	bhsno->bhsno_flags = 0x80;
	bhsno->bhsno_target_transfer_tag = 0xffffffff;
	FUNC5(request);
	return;

out:
	if (is->is_terminating) {
		FUNC1(is);
		return;
	}

	FUNC1(is);

	if (reconnect_needed)
		FUNC6(is);
}