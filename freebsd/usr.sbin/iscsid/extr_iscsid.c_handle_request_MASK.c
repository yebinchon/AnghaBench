#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* isc_target; int /*<<< orphan*/  isc_target_addr; } ;
struct iscsi_daemon_request {TYPE_2__ idr_conf; } ;
struct TYPE_3__ {scalar_t__ isc_discovery; } ;
struct connection {TYPE_1__ conn_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 struct connection* FUNC1 (int,struct iscsi_daemon_request const*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct connection*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC11(int iscsi_fd, const struct iscsi_daemon_request *request, int timeout)
{
	struct connection *conn;

	FUNC6(request->idr_conf.isc_target_addr);
	if (request->idr_conf.isc_target[0] != '\0') {
		FUNC7(request->idr_conf.isc_target);
		FUNC10("%s (%s)", request->idr_conf.isc_target_addr, request->idr_conf.isc_target);
	} else {
		FUNC10("%s", request->idr_conf.isc_target_addr);
	}

	conn = FUNC1(iscsi_fd, request);
	FUNC9(timeout);
	FUNC0(conn);
	FUNC8(conn);
	if (conn->conn_conf.isc_discovery != 0)
		FUNC2(conn);
	else
		FUNC4(conn);

	FUNC5("nothing more to do; exiting");
	FUNC3 (0);
}