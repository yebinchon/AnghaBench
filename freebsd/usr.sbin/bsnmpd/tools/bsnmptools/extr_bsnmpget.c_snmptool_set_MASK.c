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
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_toolinfo*) ; 
 scalar_t__ OUTPUT_QUIET ; 
 int /*<<< orphan*/  SNMP_MAX_BINDINGS ; 
 int /*<<< orphan*/  SNMP_PDU_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct snmp_pdu*,struct snmp_pdu*) ; 
 scalar_t__ FUNC4 (struct snmp_toolinfo*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_toolinfo*,struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct snmp_toolinfo*,struct snmp_pdu*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct snmp_toolinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snmp_pdu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct snmp_pdu*,struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC9 (struct snmp_pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snmp_pdu*) ; 
 int /*<<< orphan*/  snmpset_add_vbind ; 
 int /*<<< orphan*/  snmpset_verify_vbind ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(struct snmp_toolinfo *snmptoolctx)
{
	struct snmp_pdu req, resp;

	FUNC9(&req, SNMP_PDU_SET);

	while ((FUNC7(snmptoolctx, snmpset_verify_vbind,
	    snmpset_add_vbind, &req, SNMP_MAX_BINDINGS)) > 0) {
		if (FUNC3(&req, &resp)) {
			FUNC11("Snmp dialog");
			break;
		}

		if (FUNC8(&req, &resp) > 0) {
			if (FUNC0(snmptoolctx) != OUTPUT_QUIET)
				FUNC6(snmptoolctx, &resp, NULL);
			FUNC10(&resp);
			break;
		}

		FUNC5(snmptoolctx, &resp);
		if (!FUNC1(snmptoolctx)) {
			FUNC10(&resp);
			break;
		}

		if (FUNC4(snmptoolctx,
		    &(resp.bindings[resp.error_index - 1]),
		    resp.error_status) <= 0) {
			FUNC10(&resp);
			break;
		}

		FUNC2(stderr, "Retrying...\n");
		FUNC10(&req);
		FUNC9(&req, SNMP_PDU_SET);
	}

	FUNC10(&req);

	return (0);
}