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
struct iscsi_bhs_login_request {int bhslr_flags; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int BHSLR_FLAGS_TRANSIT ; 
 int /*<<< orphan*/  BHSLR_STAGE_OPERATIONAL_NEGOTIATION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int /*<<< orphan*/ *) ; 
 struct pdu* FUNC3 (struct pdu*) ; 
 struct pdu* FUNC4 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pdu*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC8 (struct pdu*) ; 

__attribute__((used)) static void
FUNC9(struct connection *conn)
{
	struct pdu *request, *response;
	struct iscsi_bhs_login_request *bhslr;

	FUNC0("waiting for state transition request");
	request = FUNC4(conn, false);
	bhslr = (struct iscsi_bhs_login_request *)request->pdu_bhs;
	if ((bhslr->bhslr_flags & BHSLR_FLAGS_TRANSIT) == 0) {
		FUNC5(request, 0x02, 0x00);
		FUNC1(1, "got no \"T\" flag after answering AuthMethod");
	}

	FUNC0("got state transition request");
	response = FUNC3(request);
	FUNC7(request);
	FUNC6(response, BHSLR_STAGE_OPERATIONAL_NEGOTIATION);
	FUNC8(response);
	FUNC7(response);

	FUNC2(conn, NULL);
}