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
struct snmp_toolinfo {int dummy; } ;
struct snmp_pdu {int error_index; int /*<<< orphan*/  error_status; int /*<<< orphan*/ * bindings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_toolinfo*) ; 
 scalar_t__ FUNC2 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  SNMP_MAX_BINDINGS ; 
 scalar_t__ SNMP_PDU_GETBULK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct snmp_pdu*,struct snmp_pdu*) ; 
 scalar_t__ FUNC6 (struct snmp_toolinfo*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snmp_toolinfo*,struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC8 (struct snmp_toolinfo*,struct snmp_pdu*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct snmp_pdu*,struct snmp_pdu*) ; 
 scalar_t__ FUNC10 (struct snmp_toolinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snmp_pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct snmp_pdu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC13 (struct snmp_pdu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snmpget_verify_vbind ; 
 int /*<<< orphan*/  snmptool_add_vbind ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15(struct snmp_toolinfo *snmptoolctx)
{
	struct snmp_pdu req, resp;

	FUNC11(&req, FUNC2(snmptoolctx));

	while ((FUNC10(snmptoolctx, snmpget_verify_vbind,
	     snmptool_add_vbind, &req, SNMP_MAX_BINDINGS)) > 0) {

		if (FUNC2(snmptoolctx) == SNMP_PDU_GETBULK)
			FUNC13(&req, FUNC0(snmptoolctx),
			    FUNC1(snmptoolctx));

		if (FUNC5(&req, &resp) == -1) {
			FUNC14("Snmp dialog");
			break;
		}

		if (FUNC9(&resp, &req) >= 0) {
			FUNC8(snmptoolctx, &resp, NULL);
			FUNC12(&resp);
			break;
		}

		FUNC7(snmptoolctx, &resp);
		if (FUNC2(snmptoolctx) == SNMP_PDU_GETBULK ||
		    !FUNC3(snmptoolctx)) {
			FUNC12(&resp);
			break;
		}

		/*
		 * Loop through the object list and set object->error to the
		 * varbinding that caused the error.
		 */
		if (FUNC6(snmptoolctx,
		    &(resp.bindings[resp.error_index - 1]),
		    resp.error_status) <= 0) {
			FUNC12(&resp);
			break;
		}

		FUNC4(stderr, "Retrying...\n");
		FUNC12(&resp);
		FUNC11(&req, FUNC2(snmptoolctx));
	}

	FUNC12(&req);

	return (0);
}