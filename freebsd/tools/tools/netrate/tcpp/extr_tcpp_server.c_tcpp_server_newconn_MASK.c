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
struct kevent {int dummy; } ;
struct connection {int conn_fd; int /*<<< orphan*/  conn_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_MAGIC ; 
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct connection*) ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kq ; 
 struct connection* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static struct connection *
FUNC8(int listen_fd)
{
	struct connection *conn;
	struct kevent kev;
	int fd;

	fd = FUNC1(listen_fd, NULL, NULL);
	if (fd < 0) {
		FUNC7("accept");
		return (NULL);
	}

	if (FUNC4(fd, F_SETFL, O_NONBLOCK) < 0)
		FUNC3(-1, "fcntl");

	conn = FUNC6(sizeof(*conn));
	if (conn == NULL)
		return (NULL);
	FUNC2(conn, sizeof(*conn));
	conn->conn_magic = CONNECTION_MAGIC;
	conn->conn_fd = fd;

	/*
	 * Register to read on the socket, and set our conn pointer as the
	 * udata so we can find it quickly in the future.
	 */
	FUNC0(&kev, fd, EVFILT_READ, EV_ADD, 0, 0, conn);
	if (FUNC5(kq, &kev, 1, NULL, 0, NULL) < 0)
		FUNC3(-1, "kevent");

	return (conn);
}