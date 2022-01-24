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
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sdp_sock {int /*<<< orphan*/  laddr; int /*<<< orphan*/  lport; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int /*<<< orphan*/  in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 struct sdp_sock* FUNC2 (struct socket*) ; 
 struct sockaddr* FUNC3 (int /*<<< orphan*/ ,struct in_addr*) ; 

__attribute__((used)) static int
FUNC4(struct socket *so, struct sockaddr **nam)
{
	struct sdp_sock *ssk;
	struct in_addr addr;
	in_port_t port;

	ssk = FUNC2(so);
	FUNC0(ssk);
	port = ssk->lport;
	addr.s_addr = ssk->laddr;
	FUNC1(ssk);

	*nam = FUNC3(port, &addr);
	return 0;
}