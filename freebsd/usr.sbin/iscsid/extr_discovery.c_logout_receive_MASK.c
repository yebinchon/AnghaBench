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
struct pdu {TYPE_1__* pdu_bhs; } ;
struct iscsi_bhs_logout_response {int /*<<< orphan*/  bhslr_statsn; int /*<<< orphan*/  bhslr_response; } ;
struct connection {scalar_t__ conn_statsn; } ;
struct TYPE_2__ {scalar_t__ bhs_opcode; } ;

/* Variables and functions */
 scalar_t__ BHSLR_RESPONSE_CLOSED_SUCCESSFULLY ; 
 scalar_t__ ISCSI_BHS_OPCODE_LOGOUT_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct pdu* FUNC4 (struct connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct pdu*) ; 

__attribute__((used)) static struct pdu *
FUNC6(struct connection *conn)
{
	struct pdu *response;
	struct iscsi_bhs_logout_response *bhslr;

	response = FUNC4(conn);
	FUNC5(response);
	if (response->pdu_bhs->bhs_opcode != ISCSI_BHS_OPCODE_LOGOUT_RESPONSE)
		FUNC0(1, "protocol error: received invalid opcode 0x%x",
		    response->pdu_bhs->bhs_opcode);
	bhslr = (struct iscsi_bhs_logout_response *)response->pdu_bhs;
	if (FUNC3(bhslr->bhslr_response) != BHSLR_RESPONSE_CLOSED_SUCCESSFULLY)
		FUNC1("received Logout Response with reason %d",
		    FUNC3(bhslr->bhslr_response));
	if (FUNC2(bhslr->bhslr_statsn) != conn->conn_statsn + 1) {
		FUNC0(1, "received Logout PDU with wrong StatSN: "
		    "is %u, should be %u", FUNC2(bhslr->bhslr_statsn),
		    conn->conn_statsn + 1);
	}
	conn->conn_statsn = FUNC2(bhslr->bhslr_statsn);

	return (response);
}