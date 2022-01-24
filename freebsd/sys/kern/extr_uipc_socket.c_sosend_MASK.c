#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct socket {TYPE_2__* so_proto; int /*<<< orphan*/  so_vnet; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sosend ) (struct socket*,struct sockaddr*,struct uio*,struct mbuf*,struct mbuf*,int,struct thread*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int FUNC4 (struct socket*,struct sockaddr*,struct uio*,struct mbuf*,struct mbuf*,int,struct thread*) ; 

int
FUNC5(struct socket *so, struct sockaddr *addr, struct uio *uio,
    struct mbuf *top, struct mbuf *control, int flags, struct thread *td)
{
	int error;

	FUNC1(so->so_vnet);
	if (!FUNC2(so))
		error = so->so_proto->pr_usrreqs->pru_sosend(so, addr, uio,
		    top, control, flags, td);
	else {
		FUNC3(top);
		FUNC3(control);
		error = ENOTCONN;
	}
	FUNC0();
	return (error);
}