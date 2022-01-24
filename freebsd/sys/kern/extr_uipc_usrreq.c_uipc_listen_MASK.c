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
struct unpcb {int /*<<< orphan*/  unp_peercred; int /*<<< orphan*/ * unp_conn; int /*<<< orphan*/ * unp_vnode; } ;
struct thread {int dummy; } ;
struct socket {scalar_t__ so_type; } ;

/* Variables and functions */
 int EDESTADDRREQ ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 scalar_t__ SOCK_SEQPACKET ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int) ; 
 int FUNC7 (struct socket*) ; 
 struct unpcb* FUNC8 (struct socket*) ; 

__attribute__((used)) static int
FUNC9(struct socket *so, int backlog, struct thread *td)
{
	struct unpcb *unp;
	int error;

	if (so->so_type != SOCK_STREAM && so->so_type != SOCK_SEQPACKET)
		return (EOPNOTSUPP);

	unp = FUNC8(so);
	FUNC0(unp != NULL, ("uipc_listen: unp == NULL"));

	FUNC3(unp);
	if (unp->unp_vnode == NULL) {
		/* Already connected or not bound to an address. */
		error = unp->unp_conn != NULL ? EINVAL : EDESTADDRREQ;
		FUNC4(unp);
		return (error);
	}

	FUNC1(so);
	error = FUNC7(so);
	if (error == 0) {
		FUNC5(td, &unp->unp_peercred);
		FUNC6(so, backlog);
	}
	FUNC2(so);
	FUNC4(unp);
	return (error);
}