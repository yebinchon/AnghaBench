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
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 

int
FUNC1(struct socket *so, int flags, struct mbuf *m,
		struct sockaddr *nam, struct mbuf *control, struct thread *td)
{
	FUNC0(m); /* Checks for m != NULL */
	FUNC0(control);

	return (EOPNOTSUPP);
}