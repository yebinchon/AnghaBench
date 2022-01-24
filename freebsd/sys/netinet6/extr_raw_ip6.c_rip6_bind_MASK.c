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
struct sockaddr_in6 {scalar_t__ sin6_family; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {int sa_len; } ;
struct inpcb {int /*<<< orphan*/  in6p_laddr; } ;
struct in6_ifaddr {int ia6_flags; } ;
struct ifaddr {int dummy; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int IN6_IFF_ANYCAST ; 
 int IN6_IFF_DEPRECATED ; 
 int IN6_IFF_DETACHED ; 
 int IN6_IFF_NOTREADY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC8 (struct epoch_tracker) ; 
 int /*<<< orphan*/  V_ifnet ; 
 int /*<<< orphan*/  V_ip6_use_defzone ; 
 int /*<<< orphan*/  V_ripcbinfo ; 
 struct ifaddr* FUNC9 (struct sockaddr*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC12 (struct socket*) ; 

__attribute__((used)) static int
FUNC13(struct socket *so, struct sockaddr *nam, struct thread *td)
{
	struct epoch_tracker et;
	struct inpcb *inp;
	struct sockaddr_in6 *addr = (struct sockaddr_in6 *)nam;
	struct ifaddr *ifa = NULL;
	int error = 0;

	inp = FUNC12(so);
	FUNC6(inp != NULL, ("rip6_bind: inp == NULL"));

	if (nam->sa_len != sizeof(*addr))
		return (EINVAL);
	if ((error = FUNC10(td->td_ucred, &addr->sin6_addr)) != 0)
		return (error);
	if (FUNC0(&V_ifnet) || addr->sin6_family != AF_INET6)
		return (EADDRNOTAVAIL);
	if ((error = FUNC11(addr, V_ip6_use_defzone)) != 0)
		return (error);

	FUNC7(et);
	if (!FUNC1(&addr->sin6_addr) &&
	    (ifa = FUNC9((struct sockaddr *)addr)) == NULL) {
		FUNC8(et);
		return (EADDRNOTAVAIL);
	}
	if (ifa != NULL &&
	    ((struct in6_ifaddr *)ifa)->ia6_flags &
	    (IN6_IFF_ANYCAST|IN6_IFF_NOTREADY|
	     IN6_IFF_DETACHED|IN6_IFF_DEPRECATED)) {
		FUNC8(et);
		return (EADDRNOTAVAIL);
	}
	FUNC8(et);
	FUNC2(&V_ripcbinfo);
	FUNC4(inp);
	inp->in6p_laddr = addr->sin6_addr;
	FUNC5(inp);
	FUNC3(&V_ripcbinfo);
	return (0);
}