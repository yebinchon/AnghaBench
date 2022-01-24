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
typedef  int /*<<< orphan*/  tmp ;
struct thread {int dummy; } ;
struct socket {int so_state; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_len; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {int sa_len; } ;
struct mbuf {int dummy; } ;
struct inpcb {int /*<<< orphan*/  in6p_faddr; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int EISCONN ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int SS_ISCONNECTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in6*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int FUNC7 (struct mbuf*,struct socket*,struct sockaddr_in6*,struct mbuf*) ; 
 struct inpcb* FUNC8 (struct socket*) ; 

__attribute__((used)) static int
FUNC9(struct socket *so, int flags, struct mbuf *m, struct sockaddr *nam,
    struct mbuf *control, struct thread *td)
{
	struct inpcb *inp;
	struct sockaddr_in6 tmp;
	struct sockaddr_in6 *dst;
	int ret;

	inp = FUNC8(so);
	FUNC2(inp != NULL, ("rip6_send: inp == NULL"));

	/* Always copy sockaddr to avoid overwrites. */
	/* Unlocked read. */
	if (so->so_state & SS_ISCONNECTED) {
		if (nam) {
			FUNC6(m);
			return (EISCONN);
		}
		/* XXX */
		FUNC4(&tmp, sizeof(tmp));
		tmp.sin6_family = AF_INET6;
		tmp.sin6_len = sizeof(struct sockaddr_in6);
		FUNC0(inp);
		FUNC3(&inp->in6p_faddr, &tmp.sin6_addr,
		    sizeof(struct in6_addr));
		FUNC1(inp);
		dst = &tmp;
	} else {
		if (nam == NULL) {
			FUNC6(m);
			return (ENOTCONN);
		}
		if (nam->sa_len != sizeof(struct sockaddr_in6)) {
			FUNC6(m);
			return (EINVAL);
		}
		tmp = *(struct sockaddr_in6 *)nam;
		dst = &tmp;

		if (dst->sin6_family == AF_UNSPEC) {
			/*
			 * XXX: we allow this case for backward
			 * compatibility to buggy applications that
			 * rely on old (and wrong) kernel behavior.
			 */
			FUNC5(LOG_INFO, "rip6 SEND: address family is "
			    "unspec. Assume AF_INET6\n");
			dst->sin6_family = AF_INET6;
		} else if (dst->sin6_family != AF_INET6) {
			FUNC6(m);
			return(EAFNOSUPPORT);
		}
	}
	ret = FUNC7(m, so, dst, control);
	return (ret);
}