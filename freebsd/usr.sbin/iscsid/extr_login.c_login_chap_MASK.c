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
struct TYPE_2__ {char* isc_mutual_user; } ;
struct connection {TYPE_1__ conn_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct pdu* FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC4 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC5 (struct pdu*) ; 

__attribute__((used)) static void
FUNC6(struct connection *conn)
{
	struct pdu *response;

	FUNC0("beginning CHAP authentication; sending CHAP_A");
	FUNC2(conn);

	FUNC0("waiting for CHAP_A/CHAP_C/CHAP_I");
	response = FUNC1(conn);

	FUNC0("sending CHAP_N/CHAP_R");
	FUNC3(response);
	FUNC5(response);

	/*
	 * XXX: Make sure this is not susceptible to MITM.
	 */

	FUNC0("waiting for CHAP result");
	response = FUNC1(conn);
	if (conn->conn_conf.isc_mutual_user[0] != '\0')
		FUNC4(response);
	FUNC5(response);

	FUNC0("CHAP authentication done");
}