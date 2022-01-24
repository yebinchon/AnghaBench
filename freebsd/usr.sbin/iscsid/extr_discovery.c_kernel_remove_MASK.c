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
struct iscsi_session_remove {int /*<<< orphan*/  isr_session_id; } ;
struct connection {int /*<<< orphan*/  conn_iscsi_fd; int /*<<< orphan*/  conn_session_id; } ;
typedef  int /*<<< orphan*/  isr ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSISREMOVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iscsi_session_remove*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session_remove*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(const struct connection *conn)
{
	struct iscsi_session_remove isr;
	int error;

	FUNC2(&isr, 0, sizeof(isr));
	isr.isr_session_id = conn->conn_session_id;
	error = FUNC0(conn->conn_iscsi_fd, ISCSISREMOVE, &isr);
	if (error != 0)
		FUNC1("ISCSISREMOVE");
}