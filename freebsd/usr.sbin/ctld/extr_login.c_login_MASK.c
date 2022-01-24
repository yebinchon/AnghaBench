#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct portal_group {int /*<<< orphan*/  pg_tag; struct auth_group* pg_discovery_auth_group; } ;
struct pdu {scalar_t__ pdu_bhs; } ;
struct keys {int dummy; } ;
struct iscsi_bhs_login_request {scalar_t__ bhslr_tsih; int bhslr_flags; int /*<<< orphan*/  bhslr_isid; } ;
struct connection {scalar_t__ conn_session_type; TYPE_2__* conn_target; int /*<<< orphan*/  conn_initiator_sa; TYPE_3__* conn_port; void* conn_initiator_alias; int /*<<< orphan*/ * conn_initiator_name; int /*<<< orphan*/  conn_initiator_addr; int /*<<< orphan*/  conn_initiator_isid; TYPE_1__* conn_portal; } ;
struct auth_group {scalar_t__ ag_type; int /*<<< orphan*/ * ag_name; } ;
struct TYPE_6__ {struct auth_group* p_auth_group; TYPE_2__* p_target; } ;
struct TYPE_5__ {char* t_alias; int /*<<< orphan*/  t_name; struct auth_group* t_auth_group; } ;
struct TYPE_4__ {struct portal_group* p_portal_group; } ;

/* Variables and functions */
 scalar_t__ AG_TYPE_DENY ; 
 scalar_t__ AG_TYPE_NO_AUTHENTICATION ; 
 scalar_t__ AG_TYPE_UNKNOWN ; 
 int BHSLR_FLAGS_TRANSIT ; 
 scalar_t__ BHSLR_STAGE_OPERATIONAL_NEGOTIATION ; 
 scalar_t__ CONN_SESSION_TYPE_DISCOVERY ; 
 scalar_t__ CONN_SESSION_TYPE_NONE ; 
 scalar_t__ CONN_SESSION_TYPE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct auth_group*,char const*) ; 
 scalar_t__ FUNC2 (struct auth_group*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct keys*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct keys*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct keys*) ; 
 char* FUNC8 (struct keys*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct keys*,struct pdu*) ; 
 struct keys* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct keys*,struct pdu*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct connection*,struct auth_group*) ; 
 scalar_t__ FUNC17 (struct pdu*) ; 
 scalar_t__ FUNC18 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct connection*,struct pdu*) ; 
 struct pdu* FUNC20 (struct pdu*) ; 
 int FUNC21 (struct connection*,struct pdu*) ; 
 struct pdu* FUNC22 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct pdu*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct pdu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct connection*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC28 (struct pdu*) ; 
 TYPE_3__* FUNC29 (struct portal_group*,char const*) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (char const*,char*) ; 
 int FUNC32 (char const*) ; 

void
FUNC33(struct connection *conn)
{
	struct pdu *request, *response;
	struct iscsi_bhs_login_request *bhslr;
	struct keys *request_keys, *response_keys;
	struct auth_group *ag;
	struct portal_group *pg;
	const char *initiator_name, *initiator_alias, *session_type,
	    *target_name, *auth_method;
	bool redirected, fail, trans;

	/*
	 * Handle the initial Login Request - figure out required authentication
	 * method and either transition to the next phase, if no authentication
	 * is required, or call appropriate authentication code.
	 */
	FUNC12("beginning Login Phase; waiting for Login PDU");
	request = FUNC22(conn, true);
	bhslr = (struct iscsi_bhs_login_request *)request->pdu_bhs;
	if (bhslr->bhslr_tsih != 0) {
		FUNC23(request, 0x02, 0x0a);
		FUNC13(1, "received Login PDU with non-zero TSIH");
	}

	pg = conn->conn_portal->p_portal_group;

	FUNC26(conn->conn_initiator_isid, bhslr->bhslr_isid,
	    sizeof(conn->conn_initiator_isid));

	/*
	 * XXX: Implement the C flag some day.
	 */
	request_keys = FUNC10();
	FUNC9(request_keys, request);

	FUNC0(conn->conn_initiator_name == NULL);
	initiator_name = FUNC8(request_keys, "InitiatorName");
	if (initiator_name == NULL) {
		FUNC23(request, 0x02, 0x07);
		FUNC13(1, "received Login PDU without InitiatorName");
	}
	if (FUNC32(initiator_name) == false) {
		FUNC23(request, 0x02, 0x00);
		FUNC13(1, "received Login PDU with invalid InitiatorName");
	}
	conn->conn_initiator_name = FUNC3(initiator_name);
	FUNC14(conn->conn_initiator_name);
	FUNC30("%s (%s)", conn->conn_initiator_addr, conn->conn_initiator_name);

	redirected = FUNC21(conn, request);
	if (redirected) {
		FUNC12("initiator redirected; exiting");
		FUNC4(0);
	}

	initiator_alias = FUNC8(request_keys, "InitiatorAlias");
	if (initiator_alias != NULL)
		conn->conn_initiator_alias = FUNC3(initiator_alias);

	FUNC0(conn->conn_session_type == CONN_SESSION_TYPE_NONE);
	session_type = FUNC8(request_keys, "SessionType");
	if (session_type != NULL) {
		if (FUNC31(session_type, "Normal") == 0) {
			conn->conn_session_type = CONN_SESSION_TYPE_NORMAL;
		} else if (FUNC31(session_type, "Discovery") == 0) {
			conn->conn_session_type = CONN_SESSION_TYPE_DISCOVERY;
		} else {
			FUNC23(request, 0x02, 0x00);
			FUNC13(1, "received Login PDU with invalid "
			    "SessionType \"%s\"", session_type);
		}
	} else
		conn->conn_session_type = CONN_SESSION_TYPE_NORMAL;

	FUNC0(conn->conn_target == NULL);
	if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {
		target_name = FUNC8(request_keys, "TargetName");
		if (target_name == NULL) {
			FUNC23(request, 0x02, 0x07);
			FUNC13(1, "received Login PDU without TargetName");
		}

		conn->conn_port = FUNC29(pg, target_name);
		if (conn->conn_port == NULL) {
			FUNC23(request, 0x02, 0x03);
			FUNC13(1, "requested target \"%s\" not found",
			    target_name);
		}
		conn->conn_target = conn->conn_port->p_target;
	}

	/*
	 * At this point we know what kind of authentication we need.
	 */
	if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {
		ag = conn->conn_port->p_auth_group;
		if (ag == NULL)
			ag = conn->conn_target->t_auth_group;
		if (ag->ag_name != NULL) {
			FUNC12("initiator requests to connect "
			    "to target \"%s\"; auth-group \"%s\"",
			    conn->conn_target->t_name,
			    ag->ag_name);
		} else {
			FUNC12("initiator requests to connect "
			    "to target \"%s\"", conn->conn_target->t_name);
		}
	} else {
		FUNC0(conn->conn_session_type == CONN_SESSION_TYPE_DISCOVERY);
		ag = pg->pg_discovery_auth_group;
		if (ag->ag_name != NULL) {
			FUNC12("initiator requests "
			    "discovery session; auth-group \"%s\"", ag->ag_name);
		} else {
			FUNC12("initiator requests discovery session");
		}
	}

	if (ag->ag_type == AG_TYPE_DENY) {
		FUNC23(request, 0x02, 0x01);
		FUNC13(1, "auth-type is \"deny\"");
	}

	if (ag->ag_type == AG_TYPE_UNKNOWN) {
		/*
		 * This can happen with empty auth-group.
		 */
		FUNC23(request, 0x02, 0x01);
		FUNC13(1, "auth-type not set, denying access");
	}

	/*
	 * Enforce initiator-name and initiator-portal.
	 */
	if (FUNC1(ag, initiator_name) != 0) {
		FUNC23(request, 0x02, 0x02);
		FUNC13(1, "initiator does not match allowed initiator names");
	}

	if (FUNC2(ag, &conn->conn_initiator_sa) != 0) {
		FUNC23(request, 0x02, 0x02);
		FUNC13(1, "initiator does not match allowed "
		    "initiator portals");
	}

	/*
	 * Let's see if the initiator intends to do any kind of authentication
	 * at all.
	 */
	if (FUNC17(request) == BHSLR_STAGE_OPERATIONAL_NEGOTIATION) {
		if (ag->ag_type != AG_TYPE_NO_AUTHENTICATION) {
			FUNC23(request, 0x02, 0x01);
			FUNC13(1, "initiator skipped the authentication, "
			    "but authentication is required");
		}

		FUNC7(request_keys);

		FUNC12("initiator skipped the authentication, "
		    "and we don't need it; proceeding with negotiation");
		FUNC19(conn, request);
		return;
	}

	fail = false;
	response = FUNC20(request);
	response_keys = FUNC10();
	trans = (bhslr->bhslr_flags & BHSLR_FLAGS_TRANSIT) != 0;
	auth_method = FUNC8(request_keys, "AuthMethod");
	if (ag->ag_type == AG_TYPE_NO_AUTHENTICATION) {
		FUNC12("authentication not required");
		if (auth_method == NULL ||
		    FUNC18(auth_method, "None")) {
			FUNC5(response_keys, "AuthMethod", "None");
		} else {
			FUNC15("initiator requests "
			    "AuthMethod \"%s\" instead of \"None\"",
			    auth_method);
			FUNC5(response_keys, "AuthMethod", "Reject");
		}
		if (trans)
			FUNC24(response, BHSLR_STAGE_OPERATIONAL_NEGOTIATION);
	} else {
		FUNC12("CHAP authentication required");
		if (auth_method == NULL ||
		    FUNC18(auth_method, "CHAP")) {
			FUNC5(response_keys, "AuthMethod", "CHAP");
		} else {
			FUNC15("initiator requests unsupported "
			    "AuthMethod \"%s\" instead of \"CHAP\"",
			    auth_method);
			FUNC5(response_keys, "AuthMethod", "Reject");
			fail = true;
		}
	}
	if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {
		if (conn->conn_target->t_alias != NULL)
			FUNC5(response_keys,
			    "TargetAlias", conn->conn_target->t_alias);
		FUNC6(response_keys,
		    "TargetPortalGroupTag", pg->pg_tag);
	}
	FUNC11(response_keys, response);

	FUNC28(response);
	FUNC27(response);
	FUNC7(response_keys);
	FUNC27(request);
	FUNC7(request_keys);

	if (fail) {
		FUNC12("sent reject for AuthMethod; exiting");
		FUNC4(1);
	}

	if (ag->ag_type != AG_TYPE_NO_AUTHENTICATION) {
		FUNC16(conn, ag);
		FUNC19(conn, NULL);
	} else if (trans) {
		FUNC19(conn, NULL);
	} else {
		FUNC25(conn);
	}
}