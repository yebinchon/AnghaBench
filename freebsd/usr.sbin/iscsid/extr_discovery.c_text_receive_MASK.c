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
struct iscsi_bhs_text_response {int bhstr_flags; int /*<<< orphan*/  bhstr_statsn; } ;
struct connection {scalar_t__ conn_statsn; } ;
struct TYPE_2__ {scalar_t__ bhs_opcode; } ;

/* Variables and functions */
 int BHSTR_FLAGS_CONTINUE ; 
 int BHSTR_FLAGS_FINAL ; 
 scalar_t__ ISCSI_BHS_OPCODE_TEXT_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct pdu* FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct pdu*) ; 

__attribute__((used)) static struct pdu *
FUNC4(struct connection *conn)
{
	struct pdu *response;
	struct iscsi_bhs_text_response *bhstr;

	response = FUNC2(conn);
	FUNC3(response);
	if (response->pdu_bhs->bhs_opcode != ISCSI_BHS_OPCODE_TEXT_RESPONSE)
		FUNC0(1, "protocol error: received invalid opcode 0x%x",
		    response->pdu_bhs->bhs_opcode);
	bhstr = (struct iscsi_bhs_text_response *)response->pdu_bhs;
#if 0
	if ((bhstr->bhstr_flags & BHSTR_FLAGS_FINAL) == 0)
		log_errx(1, "received Text PDU without the \"F\" flag");
#endif
	/*
	 * XXX: Implement the C flag some day.
	 */
	if ((bhstr->bhstr_flags & BHSTR_FLAGS_CONTINUE) != 0)
		FUNC0(1, "received Text PDU with unsupported \"C\" flag");
	if (FUNC1(bhstr->bhstr_statsn) != conn->conn_statsn + 1) {
		FUNC0(1, "received Text PDU with wrong StatSN: "
		    "is %u, should be %u", FUNC1(bhstr->bhstr_statsn),
		    conn->conn_statsn + 1);
	}
	conn->conn_statsn = FUNC1(bhstr->bhstr_statsn);

	return (response);
}