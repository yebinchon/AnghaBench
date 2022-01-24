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
struct socket {int so_state; } ;
struct sockaddr {int dummy; } ;
struct sdp_sock {int flags; scalar_t__ faddr; scalar_t__ fport; } ;
struct in_addr {scalar_t__ s_addr; } ;
typedef  scalar_t__ in_port_t ;

/* Variables and functions */
 int ECONNABORTED ; 
 int SDP_DROPPED ; 
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int SS_ISDISCONNECTED ; 
 struct sdp_sock* FUNC2 (struct socket*) ; 
 struct sockaddr* FUNC3 (scalar_t__,struct in_addr*) ; 

__attribute__((used)) static int
FUNC4(struct socket *so, struct sockaddr **nam)
{
	struct sdp_sock *ssk = NULL;
	struct in_addr addr;
	in_port_t port;
	int error;

	if (so->so_state & SS_ISDISCONNECTED)
		return (ECONNABORTED);

	port = 0;
	addr.s_addr = 0;
	error = 0;
	ssk = FUNC2(so);
	FUNC0(ssk);
	if (ssk->flags & (SDP_TIMEWAIT | SDP_DROPPED)) {
		error = ECONNABORTED;
		goto out;
	}
	port = ssk->fport;
	addr.s_addr = ssk->faddr;
out:
	FUNC1(ssk);
	if (error == 0)
		*nam = FUNC3(port, &addr);
	return error;
}