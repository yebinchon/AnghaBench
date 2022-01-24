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
typedef  scalar_t__ uint32_t ;
typedef  int u_int ;
struct snmp_toolinfo {int dummy; } ;
struct snmp_pdu {int nbindings; TYPE_1__* bindings; } ;
struct asn_oid {int dummy; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {struct asn_oid var; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_toolinfo*) ; 
 scalar_t__ FUNC2 (struct snmp_toolinfo*) ; 
 scalar_t__ SNMP_CODE_OK ; 
 scalar_t__ SNMP_PDU_GET ; 
 scalar_t__ SNMP_PDU_GETBULK ; 
 scalar_t__ SNMP_PDU_GETNEXT ; 
 int /*<<< orphan*/  FUNC3 (struct asn_oid*,struct asn_oid*) ; 
 int /*<<< orphan*/  FUNC4 (struct asn_oid*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct snmp_pdu*,struct snmp_pdu*) ; 
 scalar_t__ FUNC6 (struct snmp_toolinfo*,struct asn_oid*) ; 
 int /*<<< orphan*/  FUNC7 (struct snmp_toolinfo*,struct snmp_pdu*) ; 
 scalar_t__ FUNC8 (struct snmp_toolinfo*,struct snmp_pdu*,struct asn_oid*) ; 
 scalar_t__ FUNC9 (struct snmp_pdu*,struct snmp_pdu*) ; 
 scalar_t__ FUNC10 (struct snmp_toolinfo*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct snmp_pdu*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snmp_pdu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC13 (struct snmp_pdu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snmptool_add_vbind ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,struct asn_oid*,struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static int
FUNC17(struct snmp_toolinfo *snmptoolctx)
{
	struct snmp_pdu req, resp;
	struct asn_oid root;	/* Keep the initial oid. */
	int32_t outputs, rc;
	uint32_t op;

	if (FUNC2(snmptoolctx) == SNMP_PDU_GETBULK)
		op = SNMP_PDU_GETBULK;
	else
		op = SNMP_PDU_GETNEXT;

	FUNC11(&req, op);

	while ((rc = FUNC10(snmptoolctx, NULL,
	    snmptool_add_vbind, &req, 1)) > 0) {

		/* Remember the root where the walk started from. */
		FUNC4(&root, 0, sizeof(struct asn_oid));
		FUNC3(&root, &(req.bindings[0].var));

		if (op == SNMP_PDU_GETBULK)
			FUNC13(&req, FUNC0(snmptoolctx),
			    FUNC1(snmptoolctx));

		outputs = 0;
		while (FUNC5(&req, &resp) >= 0) {
			if ((FUNC9(&resp, &req)) < 0) {
				FUNC7(snmptoolctx, &resp);
				FUNC12(&resp);
				outputs = -1;
				break;
			}

			rc = FUNC8(snmptoolctx, &resp, &root);
			if (rc < 0) {
				FUNC12(&resp);
				outputs = -1;
				break;
			}

			outputs += rc;

			if ((u_int)rc < resp.nbindings) {
				FUNC12(&resp);
				break;
			}

			FUNC14(op,
			    &(resp.bindings[resp.nbindings - 1].var), &req);
			if (op == SNMP_PDU_GETBULK)
				FUNC13(&req, FUNC0(snmptoolctx),
				    FUNC1(snmptoolctx));
			FUNC12(&resp);
		}

		/* Just in case our root was a leaf. */
		if (outputs == 0) {
			FUNC14(SNMP_PDU_GET, &root, &req);
			if (FUNC5(&req, &resp) == SNMP_CODE_OK) {
				if (FUNC9(&resp, &req) < 0)
					FUNC7(snmptoolctx, &resp);
				else
					FUNC8(snmptoolctx, &resp,
					    NULL);
				FUNC12(&resp);
			} else
				FUNC15("Snmp dialog");
		}

		if (FUNC6(snmptoolctx, &root) < 0) {
			FUNC16("snmp_object_remove");
			break;
		}

		FUNC12(&req);
		FUNC11(&req, op);
	}

	FUNC12(&req);

	if (rc == 0)
		return (0);
	else
		return (1);
}