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
struct pdu {int dummy; } ;
struct keys {int /*<<< orphan*/ * keys_values; int /*<<< orphan*/ ** keys_names; } ;
struct TYPE_2__ {int isc_iser; } ;
struct connection {TYPE_1__ conn_conf; } ;

/* Variables and functions */
 int KEYS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct keys*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct keys*) ; 
 int /*<<< orphan*/  FUNC4 (struct keys*,struct pdu*) ; 
 struct keys* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct keys*,struct pdu*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 struct pdu* FUNC8 (struct connection*) ; 
 struct pdu* FUNC9 (struct connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC11 (struct pdu*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 struct pdu* FUNC13 (struct connection*) ; 
 struct pdu* FUNC14 (struct connection*) ; 

void
FUNC15(struct connection *conn)
{
	struct pdu *request, *response;
	struct keys *request_keys, *response_keys;
	int i;

	FUNC7("beginning discovery session");
	request = FUNC13(conn);
	request_keys = FUNC5();
	FUNC2(request_keys, "SendTargets", "All");
	FUNC6(request_keys, request);
	FUNC3(request_keys);
	request_keys = NULL;
	FUNC11(request);
	FUNC10(request);
	request = NULL;

	FUNC7("waiting for Text Response");
	response = FUNC14(conn);
	response_keys = FUNC5();
	FUNC4(response_keys, response);
	for (i = 0; i < KEYS_MAX; i++) {
		if (response_keys->keys_names[i] == NULL)
			break;

		if (FUNC12(response_keys->keys_names[i], "TargetName") != 0)
			continue;

		FUNC7("adding target %s", response_keys->keys_values[i]);
		/*
		 * XXX: Validate the target name?
		 */
		FUNC0(conn, response_keys->keys_values[i]);
	}
	FUNC3(response_keys);
	FUNC10(response);

	FUNC7("removing temporary discovery session");
	FUNC1(conn);

#ifdef ICL_KERNEL_PROXY
	if (conn->conn_conf.isc_iser == 1) {
		/*
		 * If we're going through the proxy, the kernel already
		 * sent Logout PDU for us and destroyed the session,
		 * so we can't send anything anymore.
		 */
		log_debugx("discovery session done");
		return;
	}
#endif

	FUNC7("discovery done; logging out");
	request = FUNC8(conn);
	FUNC11(request);
	FUNC10(request);
	request = NULL;

	FUNC7("waiting for Logout Response");
	response = FUNC9(conn);
	FUNC10(response);

	FUNC7("discovery session done");
}