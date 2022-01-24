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
struct rchap {int dummy; } ;
struct pdu {int dummy; } ;
struct keys {int dummy; } ;
struct auth {char* a_mutual_user; int /*<<< orphan*/  a_mutual_secret; int /*<<< orphan*/  a_user; TYPE_1__* a_auth_group; } ;
struct TYPE_2__ {scalar_t__ ag_type; } ;

/* Variables and functions */
 scalar_t__ AG_TYPE_CHAP_MUTUAL ; 
 int /*<<< orphan*/  BHSLR_STAGE_OPERATIONAL_NEGOTIATION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct keys*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct keys*) ; 
 char* FUNC3 (struct keys*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct keys*,struct pdu*) ; 
 struct keys* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct keys*,struct pdu*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 struct pdu* FUNC9 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC10 (struct pdu*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC13 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC14 (struct rchap*) ; 
 char* FUNC15 (struct rchap*) ; 
 struct rchap* FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct rchap*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC18(struct pdu *request,
    const struct auth *auth)
{
	struct pdu *response;
	struct keys *request_keys, *response_keys;
	struct rchap *rchap;
	const char *chap_i, *chap_c;
	char *chap_r;
	int error;

	response = FUNC9(request);
	FUNC11(response, BHSLR_STAGE_OPERATIONAL_NEGOTIATION);

	/*
	 * Actually, one more thing: mutual authentication.
	 */
	request_keys = FUNC5();
	FUNC4(request_keys, request);
	chap_i = FUNC3(request_keys, "CHAP_I");
	chap_c = FUNC3(request_keys, "CHAP_C");
	if (chap_i != NULL || chap_c != NULL) {
		if (chap_i == NULL) {
			FUNC10(request, 0x02, 0x07);
			FUNC8(1, "initiator requested target "
			    "authentication, but didn't send CHAP_I");
		}
		if (chap_c == NULL) {
			FUNC10(request, 0x02, 0x07);
			FUNC8(1, "initiator requested target "
			    "authentication, but didn't send CHAP_C");
		}
		if (auth->a_auth_group->ag_type != AG_TYPE_CHAP_MUTUAL) {
			FUNC10(request, 0x02, 0x01);
			FUNC8(1, "initiator requests target authentication "
			    "for user \"%s\", but mutual user/secret "
			    "is not set", auth->a_user);
		}

		FUNC7("performing mutual authentication as user \"%s\"",
		    auth->a_mutual_user);

		rchap = FUNC16(auth->a_mutual_secret);
		error = FUNC17(rchap, chap_i, chap_c);
		if (error != 0) {
			FUNC10(request, 0x02, 0x07);
			FUNC8(1, "received CHAP Login PDU with malformed "
			    "CHAP_I or CHAP_C");
		}
		chap_r = FUNC15(rchap);
		FUNC14(rchap);
		response_keys = FUNC5();
		FUNC1(response_keys, "CHAP_N", auth->a_mutual_user);
		FUNC1(response_keys, "CHAP_R", chap_r);
		FUNC0(chap_r);
		FUNC6(response_keys, response);
		FUNC2(response_keys);
	} else {
		FUNC7("initiator did not request target authentication");
	}

	FUNC2(request_keys);
	FUNC13(response);
	FUNC12(response);
}