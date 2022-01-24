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
struct pdu {scalar_t__ pdu_bhs; } ;
struct keys {char const** keys_names; int /*<<< orphan*/ * keys_values; } ;
struct iscsi_bhs_login_response {int bhslr_flags; } ;
struct TYPE_2__ {char* isc_mutual_user; char* isc_user; char* isc_initiator; char* isc_initiator_alias; scalar_t__ isc_discovery; char* isc_target; char* isc_secret; } ;
struct connection {TYPE_1__ conn_conf; } ;

/* Variables and functions */
 int BHSLR_FLAGS_TRANSIT ; 
 scalar_t__ BHSLR_STAGE_OPERATIONAL_NEGOTIATION ; 
 int /*<<< orphan*/  BHSLR_STAGE_SECURITY_NEGOTIATION ; 
 int KEYS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct connection*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct keys*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct keys*) ; 
 char* FUNC3 (struct keys*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct keys*,struct pdu*) ; 
 struct keys* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct keys*,struct pdu*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct connection*) ; 
 int /*<<< orphan*/  FUNC11 (struct connection*,char const*,int /*<<< orphan*/ ) ; 
 struct pdu* FUNC12 (struct connection*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct pdu*) ; 
 struct pdu* FUNC14 (struct connection*) ; 
 int /*<<< orphan*/  FUNC15 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC16 (struct pdu*) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 

void
FUNC18(struct connection *conn)
{
	struct pdu *request, *response;
	struct keys *request_keys, *response_keys;
	struct iscsi_bhs_login_response *bhslr2;
	const char *auth_method;
	int i;

	FUNC7("beginning Login phase; sending Login PDU");
	request = FUNC12(conn, BHSLR_STAGE_SECURITY_NEGOTIATION);
	request_keys = FUNC5();
	if (conn->conn_conf.isc_mutual_user[0] != '\0') {
		FUNC1(request_keys, "AuthMethod", "CHAP");
	} else if (conn->conn_conf.isc_user[0] != '\0') {
		/*
		 * Give target a chance to skip authentication if it
		 * doesn't feel like it.
		 *
		 * None is first, CHAP second; this is to work around
		 * what seems to be LIO (Linux target) bug: otherwise,
		 * if target is configured with no authentication,
		 * and we are configured to authenticate, the target
		 * will erroneously respond with AuthMethod=CHAP
		 * instead of AuthMethod=None, and will subsequently
		 * fail the connection.  This usually happens with
		 * Discovery sessions, which default to no authentication.
		 */
		FUNC1(request_keys, "AuthMethod", "None,CHAP");
	} else {
		FUNC1(request_keys, "AuthMethod", "None");
	}
	FUNC1(request_keys, "InitiatorName",
	    conn->conn_conf.isc_initiator);
	if (conn->conn_conf.isc_initiator_alias[0] != '\0') {
		FUNC1(request_keys, "InitiatorAlias",
		    conn->conn_conf.isc_initiator_alias);
	}
	if (conn->conn_conf.isc_discovery == 0) {
		FUNC1(request_keys, "SessionType", "Normal");
		FUNC1(request_keys,
		    "TargetName", conn->conn_conf.isc_target);
	} else {
		FUNC1(request_keys, "SessionType", "Discovery");
	}
	FUNC6(request_keys, request);
	FUNC2(request_keys);
	FUNC16(request);
	FUNC15(request);

	response = FUNC14(conn);

	response_keys = FUNC5();
	FUNC4(response_keys, response);

	for (i = 0; i < KEYS_MAX; i++) {
		if (response_keys->keys_names[i] == NULL)
			break;

		/*
		 * Not interested in AuthMethod at this point; we only need
		 * to parse things such as TargetAlias.
		 *
		 * XXX: This is somewhat ugly.  We should have a way to apply
		 *      all the keys to the session and use that by default
		 *      instead of discarding them.
		 */
		if (FUNC17(response_keys->keys_names[i], "AuthMethod") == 0)
			continue;

		FUNC11(conn,
		    response_keys->keys_names[i], response_keys->keys_values[i]);
	}

	bhslr2 = (struct iscsi_bhs_login_response *)response->pdu_bhs;
	if ((bhslr2->bhslr_flags & BHSLR_FLAGS_TRANSIT) != 0 &&
	    FUNC13(response) == BHSLR_STAGE_OPERATIONAL_NEGOTIATION) {
		if (conn->conn_conf.isc_mutual_user[0] != '\0') {
			FUNC8(1, "target requested transition "
			    "to operational parameter negotiation, "
			    "but we require mutual CHAP");
		}

		FUNC7("target requested transition "
		    "to operational parameter negotiation");
		FUNC2(response_keys);
		FUNC15(response);
		FUNC10(conn);
		return;
	}

	auth_method = FUNC3(response_keys, "AuthMethod");
	if (auth_method == NULL)
		FUNC8(1, "received response without AuthMethod");
	if (FUNC17(auth_method, "None") == 0) {
		if (conn->conn_conf.isc_mutual_user[0] != '\0') {
			FUNC8(1, "target does not require authantication, "
			    "but we require mutual CHAP");
		}

		FUNC7("target does not require authentication");
		FUNC2(response_keys);
		FUNC15(response);
		FUNC10(conn);
		return;
	}

	if (FUNC17(auth_method, "CHAP") != 0) {
		FUNC0(conn, "Unsupported AuthMethod");
		FUNC8(1, "received response "
		    "with unsupported AuthMethod \"%s\"", auth_method);
	}

	if (conn->conn_conf.isc_user[0] == '\0' ||
	    conn->conn_conf.isc_secret[0] == '\0') {
		FUNC0(conn, "Authentication required");
		FUNC8(1, "target requests CHAP authentication, but we don't "
		    "have user and secret");
	}

	FUNC2(response_keys);
	response_keys = NULL;
	FUNC15(response);
	response = NULL;

	FUNC9(conn);
	FUNC10(conn);
}