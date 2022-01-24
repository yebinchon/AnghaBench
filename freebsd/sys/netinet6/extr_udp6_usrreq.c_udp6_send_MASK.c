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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int FUNC1 (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct thread*) ; 

__attribute__((used)) static int
FUNC2(struct socket *so, int flags, struct mbuf *m,
    struct sockaddr *addr, struct mbuf *control, struct thread *td)
{
	int error;

	if (addr) {
		if (addr->sa_len != sizeof(struct sockaddr_in6)) {
			error = EINVAL;
			goto bad;
		}
		if (addr->sa_family != AF_INET6) {
			error = EAFNOSUPPORT;
			goto bad;
		}
	}

	return (FUNC1(so, flags, m, addr, control, td));

bad:
	if (control)
		FUNC0(control);
	FUNC0(m);
	return (error);
}