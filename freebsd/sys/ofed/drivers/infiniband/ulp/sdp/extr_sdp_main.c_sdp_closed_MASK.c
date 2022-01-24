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
struct sdp_sock {int flags; struct socket* socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SDP_DROPPED ; 
 int SDP_SOCKREF ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int SS_PROTOREF ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 

__attribute__((used)) static struct sdp_sock *
FUNC6(struct sdp_sock *ssk)
{
	struct socket *so;

	FUNC1(ssk);

	ssk->flags |= SDP_DROPPED;
	so = ssk->socket;
	FUNC5(so);
	if (ssk->flags & SDP_SOCKREF) {
		FUNC0(so->so_state & SS_PROTOREF,
		    ("sdp_closed: !SS_PROTOREF"));
		ssk->flags &= ~SDP_SOCKREF;
		FUNC2(ssk);
		FUNC3(so);
		so->so_state &= ~SS_PROTOREF;
		FUNC4(so);
		return (NULL);
	}
	return (ssk);
}