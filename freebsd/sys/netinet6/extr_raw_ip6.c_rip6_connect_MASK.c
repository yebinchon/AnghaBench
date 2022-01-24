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
struct socket {int /*<<< orphan*/  so_cred; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {int sa_len; } ;
struct in6_addr {int dummy; } ;
struct inpcb {struct in6_addr in6p_laddr; int /*<<< orphan*/  in6p_faddr; int /*<<< orphan*/  in6p_outputopts; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int EADDRNOTAVAIL ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  V_ifnet ; 
 int /*<<< orphan*/  V_ip6_use_defzone ; 
 int /*<<< orphan*/  V_ripcbinfo ; 
 int FUNC6 (struct sockaddr_in6*,int /*<<< orphan*/ ,struct inpcb*,int /*<<< orphan*/ ,int,struct in6_addr*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 struct inpcb* FUNC9 (struct socket*) ; 

__attribute__((used)) static int
FUNC10(struct socket *so, struct sockaddr *nam, struct thread *td)
{
	struct inpcb *inp;
	struct sockaddr_in6 *addr = (struct sockaddr_in6 *)nam;
	struct in6_addr in6a;
	int error = 0, scope_ambiguous = 0;

	inp = FUNC9(so);
	FUNC5(inp != NULL, ("rip6_connect: inp == NULL"));

	if (nam->sa_len != sizeof(*addr))
		return (EINVAL);
	if (FUNC0(&V_ifnet))
		return (EADDRNOTAVAIL);
	if (addr->sin6_family != AF_INET6)
		return (EAFNOSUPPORT);

	/*
	 * Application should provide a proper zone ID or the use of default
	 * zone IDs should be enabled.  Unfortunately, some applications do
	 * not behave as it should, so we need a workaround.  Even if an
	 * appropriate ID is not determined, we'll see if we can determine
	 * the outgoing interface.  If we can, determine the zone ID based on
	 * the interface below.
	 */
	if (addr->sin6_scope_id == 0 && !V_ip6_use_defzone)
		scope_ambiguous = 1;
	if ((error = FUNC7(addr, V_ip6_use_defzone)) != 0)
		return (error);

	FUNC1(&V_ripcbinfo);
	FUNC3(inp);
	/* Source address selection. XXX: need pcblookup? */
	error = FUNC6(addr, inp->in6p_outputopts,
	    inp, so->so_cred, scope_ambiguous, &in6a, NULL);
	if (error) {
		FUNC4(inp);
		FUNC2(&V_ripcbinfo);
		return (error);
	}

	inp->in6p_faddr = addr->sin6_addr;
	inp->in6p_laddr = in6a;
	FUNC8(so);
	FUNC4(inp);
	FUNC2(&V_ripcbinfo);
	return (0);
}