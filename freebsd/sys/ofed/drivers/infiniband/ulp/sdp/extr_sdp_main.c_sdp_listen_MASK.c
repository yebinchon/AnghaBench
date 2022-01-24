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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sdp_sock {int flags; scalar_t__ lport; int /*<<< orphan*/  id; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int SDP_DROPPED ; 
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  TCPS_LISTEN ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct sdp_sock*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct sdp_sock* FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int) ; 
 int FUNC8 (struct socket*) ; 

__attribute__((used)) static int
FUNC9(struct socket *so, int backlog, struct thread *td)
{
	int error = 0;
	struct sdp_sock *ssk;

	ssk = FUNC6(so);
	FUNC0(ssk);
	if (ssk->flags & (SDP_TIMEWAIT | SDP_DROPPED)) {
		error = EINVAL;
		goto out;
	}
	if (error == 0 && ssk->lport == 0)
		error = FUNC5(ssk, (struct sockaddr *)0, td->td_ucred);
	FUNC2(so);
	if (error == 0)
		error = FUNC8(so);
	if (error == 0) {
		FUNC7(so, backlog);
		ssk->state = TCPS_LISTEN;
	}
	FUNC3(so);

out:
	FUNC1(ssk);
	if (error == 0)
		error = -FUNC4(ssk->id, backlog);
	return (error);
}