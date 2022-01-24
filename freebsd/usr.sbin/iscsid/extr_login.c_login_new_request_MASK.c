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
struct pdu {scalar_t__ pdu_bhs; } ;
struct iscsi_bhs_login_request {int bhslr_opcode; int /*<<< orphan*/  bhslr_expstatsn; scalar_t__ bhslr_cmdsn; scalar_t__ bhslr_initiator_task_tag; int /*<<< orphan*/  bhslr_tsih; int /*<<< orphan*/  bhslr_isid; int /*<<< orphan*/  bhslr_flags; } ;
struct connection {scalar_t__ conn_statsn; int /*<<< orphan*/  conn_tsih; int /*<<< orphan*/  conn_isid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHSLR_FLAGS_TRANSIT ; 
 int BHSLR_STAGE_FULL_FEATURE_PHASE ; 
#define  BHSLR_STAGE_OPERATIONAL_NEGOTIATION 129 
#define  BHSLR_STAGE_SECURITY_NEGOTIATION 128 
 int ISCSI_BHS_OPCODE_IMMEDIATE ; 
 int ISCSI_BHS_OPCODE_LOGIN_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pdu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pdu*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct pdu* FUNC7 (struct connection*) ; 

__attribute__((used)) static struct pdu *
FUNC8(struct connection *conn, int csg)
{
	struct pdu *request;
	struct iscsi_bhs_login_request *bhslr;
	int nsg;

	request = FUNC7(conn);
	bhslr = (struct iscsi_bhs_login_request *)request->pdu_bhs;
	bhslr->bhslr_opcode = ISCSI_BHS_OPCODE_LOGIN_REQUEST |
	    ISCSI_BHS_OPCODE_IMMEDIATE;

	bhslr->bhslr_flags = BHSLR_FLAGS_TRANSIT;
	switch (csg) {
	case BHSLR_STAGE_SECURITY_NEGOTIATION:
		nsg = BHSLR_STAGE_OPERATIONAL_NEGOTIATION;
		break;
	case BHSLR_STAGE_OPERATIONAL_NEGOTIATION:
		nsg = BHSLR_STAGE_FULL_FEATURE_PHASE;
		break;
	default:
		FUNC0(!"invalid csg");
		FUNC3(1, "invalid csg %d", csg);
	}
	FUNC4(request, csg);
	FUNC5(request, nsg);

	FUNC6(bhslr->bhslr_isid, &conn->conn_isid, sizeof(bhslr->bhslr_isid));
	bhslr->bhslr_tsih = FUNC2(conn->conn_tsih);
	bhslr->bhslr_initiator_task_tag = 0;
	bhslr->bhslr_cmdsn = 0;
	bhslr->bhslr_expstatsn = FUNC1(conn->conn_statsn + 1);

	return (request);
}