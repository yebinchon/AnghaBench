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
struct pdu {int dummy; } ;
struct keys {int dummy; } ;
struct connection {int dummy; } ;
struct chap {int dummy; } ;
struct auth_group {scalar_t__ ag_type; } ;
struct auth {char const* a_user; int /*<<< orphan*/ * a_secret; } ;

/* Variables and functions */
 scalar_t__ AG_TYPE_CHAP ; 
 scalar_t__ AG_TYPE_CHAP_MUTUAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct auth* FUNC1 (struct auth_group*,char const*) ; 
 int FUNC2 (struct chap*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct chap*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct keys*) ; 
 char* FUNC5 (struct keys*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct keys*,struct pdu*) ; 
 struct keys* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 struct pdu* FUNC9 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pdu*,int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pdu *
FUNC12(struct connection *conn, struct auth_group *ag,
    struct chap *chap, const struct auth **authp)
{
	struct pdu *request;
	struct keys *request_keys;
	const char *chap_n, *chap_r;
	const struct auth *auth;
	int error;

	request = FUNC9(conn, false);
	request_keys = FUNC7();
	FUNC6(request_keys, request);

	chap_n = FUNC5(request_keys, "CHAP_N");
	if (chap_n == NULL) {
		FUNC10(request, 0x02, 0x07);
		FUNC8(1, "received CHAP Login PDU without CHAP_N");
	}
	chap_r = FUNC5(request_keys, "CHAP_R");
	if (chap_r == NULL) {
		FUNC10(request, 0x02, 0x07);
		FUNC8(1, "received CHAP Login PDU without CHAP_R");
	}
	error = FUNC3(chap, chap_r);
	if (error != 0) {
		FUNC10(request, 0x02, 0x07);
		FUNC8(1, "received CHAP Login PDU with malformed CHAP_R");
	}

	/*
	 * Verify the response.
	 */
	FUNC0(ag->ag_type == AG_TYPE_CHAP ||
	    ag->ag_type == AG_TYPE_CHAP_MUTUAL);
	auth = FUNC1(ag, chap_n);
	if (auth == NULL) {
		FUNC10(request, 0x02, 0x01);
		FUNC8(1, "received CHAP Login with invalid user \"%s\"",
		    chap_n);
	}

	FUNC0(auth->a_secret != NULL);
	FUNC0(FUNC11(auth->a_secret) > 0);

	error = FUNC2(chap, auth->a_secret);
	if (error != 0) {
		FUNC10(request, 0x02, 0x01);
		FUNC8(1, "CHAP authentication failed for user \"%s\"",
		    auth->a_user);
	}

	FUNC4(request_keys);

	*authp = auth;
	return (request);
}