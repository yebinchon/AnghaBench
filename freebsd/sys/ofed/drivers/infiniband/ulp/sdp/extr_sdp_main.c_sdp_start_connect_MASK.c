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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_zero; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct sdp_sock {scalar_t__ lport; int /*<<< orphan*/  state; int /*<<< orphan*/  id; int /*<<< orphan*/  laddr; struct socket* socket; } ;
typedef  int /*<<< orphan*/  src ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SDP_RESOLVE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 int /*<<< orphan*/  TCPS_SYN_SENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sdp_sock*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 

__attribute__((used)) static int
FUNC7(struct sdp_sock *ssk, struct sockaddr *nam, struct thread *td)
{
	struct sockaddr_in src;
	struct socket *so;
	int error;

	so = ssk->socket;

	FUNC1(ssk);
	if (ssk->lport == 0) {
		error = FUNC5(ssk, (struct sockaddr *)0, td->td_ucred);
		if (error)
			return error;
	}
	src.sin_family = AF_INET;
	src.sin_len = sizeof(src);
	FUNC3(&src.sin_zero, sizeof(src.sin_zero));
	src.sin_port = ssk->lport;
	src.sin_addr.s_addr = ssk->laddr;
	FUNC6(so);
	FUNC2(ssk);
	error = -FUNC4(ssk->id, (struct sockaddr *)&src, nam,
	    SDP_RESOLVE_TIMEOUT);
	FUNC0(ssk);
	if (error == 0)
		ssk->state = TCPS_SYN_SENT;

	return 0;
}