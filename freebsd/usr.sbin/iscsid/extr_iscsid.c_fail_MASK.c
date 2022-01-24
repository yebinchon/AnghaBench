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
struct iscsi_daemon_fail {int /*<<< orphan*/  idf_reason; int /*<<< orphan*/  idf_session_id; } ;
struct connection {int /*<<< orphan*/  conn_iscsi_fd; int /*<<< orphan*/  conn_session_id; } ;
typedef  int /*<<< orphan*/  idf ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSIDFAIL ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iscsi_daemon_fail*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_daemon_fail*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

void
FUNC4(const struct connection *conn, const char *reason)
{
	struct iscsi_daemon_fail idf;
	int error, saved_errno;

	saved_errno = errno;

	FUNC2(&idf, 0, sizeof(idf));
	idf.idf_session_id = conn->conn_session_id;
	FUNC3(idf.idf_reason, reason, sizeof(idf.idf_reason));

	error = FUNC0(conn->conn_iscsi_fd, ISCSIDFAIL, &idf);
	if (error != 0)
		FUNC1(1, "ISCSIDFAIL");

	errno = saved_errno;
}