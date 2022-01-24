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
struct connection {int /*<<< orphan*/  conn_socket; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct connection const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void
FUNC6(const struct connection *conn, char *data, size_t len)
{
	ssize_t ret;

	while (len > 0) {
		ret = FUNC3(conn->conn_socket, data, len);
		if (ret < 0) {
			if (FUNC5()) {
				FUNC0(conn, "Login Phase timeout");
				FUNC2(1, "exiting due to timeout");
			}
			FUNC0(conn, FUNC4(errno));
			FUNC1(1, "read");
		} else if (ret == 0) {
			FUNC0(conn, "connection lost");
			FUNC2(1, "read: connection lost");
		}
		len -= ret;
		data += ret;
	}
}