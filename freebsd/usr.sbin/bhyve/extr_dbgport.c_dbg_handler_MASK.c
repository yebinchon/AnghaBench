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
typedef  char uint32_t ;
struct vmctx {int dummy; } ;
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 char BVM_DBG_SIG ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_NONBLOCK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_NOSIGPIPE ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int conn_fd ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  listen_fd ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static int
FUNC7(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
	    uint32_t *eax, void *arg)
{
	int nwritten, nread, printonce;
	int on = 1;
	char ch;

	if (bytes == 2 && in) {
		*eax = BVM_DBG_SIG;
		return (0);
	}

	if (bytes != 4)
		return (-1);

again:
	printonce = 0;
	while (conn_fd < 0) {
		if (!printonce) {
			FUNC3("Waiting for connection from gdb\r\n");
			printonce = 1;
		}
		conn_fd = FUNC0(listen_fd, NULL, NULL, SOCK_NONBLOCK);
		if (conn_fd >= 0) {
			/* Avoid EPIPE after the client drops off. */
			(void)FUNC5(conn_fd, SOL_SOCKET, SO_NOSIGPIPE,
			    &on, sizeof(on));
			/* Improve latency for one byte at a time tranfers. */
			(void)FUNC5(conn_fd, IPPROTO_TCP, TCP_NODELAY,
			    &on, sizeof(on));
		} else if (errno != EINTR) {
			FUNC2("accept");
		}
	}

	if (in) {
		nread = FUNC4(conn_fd, &ch, 1);
		if (nread == -1 && errno == EAGAIN)
			*eax = -1;
		else if (nread == 1)
			*eax = ch;
		else {
			FUNC1(conn_fd);
			conn_fd = -1;
			goto again;
		}
	} else {
		ch = *eax;
		nwritten = FUNC6(conn_fd, &ch, 1);
		if (nwritten != 1) {
			FUNC1(conn_fd);
			conn_fd = -1;
			goto again;
		}
	}
	return (0);
}