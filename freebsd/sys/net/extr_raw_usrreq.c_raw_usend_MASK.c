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
struct thread {int dummy; } ;
struct socket {TYPE_1__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct mbuf {scalar_t__ m_len; } ;
struct TYPE_2__ {int (* pr_output ) (struct mbuf*,struct socket*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PRUS_OOB ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/ * FUNC2 (struct socket*) ; 
 int FUNC3 (struct mbuf*,struct socket*) ; 

__attribute__((used)) static int
FUNC4(struct socket *so, int flags, struct mbuf *m, struct sockaddr *nam,
    struct mbuf *control, struct thread *td)
{

	FUNC0(FUNC2(so) != NULL, ("raw_usend: rp == NULL"));

	if ((flags & PRUS_OOB) || (control && control->m_len)) {
		if (m != NULL)
			FUNC1(m);
		if (control != NULL)
			FUNC1(control);
		return (EOPNOTSUPP);
	}

	/*
	 * For historical (bad?) reasons, we effectively ignore the address
	 * argument to sendto(2).  Perhaps we should return an error instead?
	 */
	return ((*so->so_proto->pr_output)(m, so));
}