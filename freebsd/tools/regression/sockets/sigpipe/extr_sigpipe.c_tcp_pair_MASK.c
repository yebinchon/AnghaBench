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
typedef  int /*<<< orphan*/  u_short ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listen_sock ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(u_short port, int sock[2])
{
	int accept_sock, connect_sock;
	struct sockaddr_in sin;
	socklen_t len;

	connect_sock = FUNC7(PF_INET, SOCK_STREAM, 0);
	if (connect_sock < 0)
		FUNC3(-1, "tcp_pair: socket");

	FUNC1(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC4(INADDR_LOOPBACK);
	sin.sin_port = FUNC5(port);

	if (FUNC2(connect_sock, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		FUNC3(-1, "tcp_pair: connect");

	FUNC6(1);				/* Time for TCP to settle. */

	len = sizeof(sin);
	accept_sock = FUNC0(listen_sock, (struct sockaddr *)&sin, &len);
	if (accept_sock < 0)
		FUNC3(-1, "tcp_pair: accept");

	FUNC6(1);				/* Time for TCP to settle. */

	sock[0] = accept_sock;
	sock[1] = connect_sock;
}