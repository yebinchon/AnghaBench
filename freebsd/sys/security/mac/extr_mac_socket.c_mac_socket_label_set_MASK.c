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
struct ucred {int dummy; } ;
struct socket {TYPE_2__* so_proto; } ;
struct label {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* pru_sosetlabel ) (struct socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int FUNC2 (struct ucred*,struct socket*,struct label*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,struct socket*,struct label*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 

int
FUNC5(struct ucred *cred, struct socket *so,
    struct label *label)
{
	int error;

	/*
	 * We acquire the socket lock when we perform the test and set, but
	 * have to release it as the pcb code needs to acquire the pcb lock,
	 * which will precede the socket lock in the lock order.  However,
	 * this is fine, as any race will simply result in the inpcb being
	 * refreshed twice, but still consistently, as the inpcb code will
	 * acquire the socket lock before refreshing, holding both locks.
	 */
	FUNC0(so);
	error = FUNC2(cred, so, label);
	if (error) {
		FUNC1(so);
		return (error);
	}

	FUNC3(cred, so, label);
	FUNC1(so);

	/*
	 * If the protocol has expressed interest in socket layer changes,
	 * such as if it needs to propagate changes to a cached pcb label
	 * from the socket, notify it of the label change while holding the
	 * socket lock.
	 */
	if (so->so_proto->pr_usrreqs->pru_sosetlabel != NULL)
		(so->so_proto->pr_usrreqs->pru_sosetlabel)(so);

	return (0);
}