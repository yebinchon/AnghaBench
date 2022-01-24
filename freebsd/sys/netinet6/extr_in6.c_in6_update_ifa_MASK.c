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
struct in6_ifaddr {int /*<<< orphan*/  ia_ifa; } ;
struct in6_aliasreq {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct in6_ifaddr* FUNC1 (struct ifnet*,struct in6_aliasreq*,int) ; 
 int FUNC2 (struct ifnet*,struct in6_aliasreq*,struct in6_ifaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_ifaddr*,struct ifnet*) ; 
 int FUNC4 (struct ifnet*,struct in6_aliasreq*,struct in6_ifaddr*,int,int) ; 
 int FUNC5 (struct ifnet*,struct in6_aliasreq*,struct in6_ifaddr*,int) ; 

int
FUNC6(struct ifnet *ifp, struct in6_aliasreq *ifra,
    struct in6_ifaddr *ia, int flags)
{
	int error, hostIsNew = 0;

	if ((error = FUNC5(ifp, ifra, ia, flags)) != 0)
		return (error);

	if (ia == NULL) {
		hostIsNew = 1;
		if ((ia = FUNC1(ifp, ifra, flags)) == NULL)
			return (ENOBUFS);
	}

	error = FUNC4(ifp, ifra, ia, hostIsNew, flags);
	if (error != 0) {
		if (hostIsNew != 0) {
			FUNC3(ia, ifp);
			FUNC0(&ia->ia_ifa);
		}
		return (error);
	}

	if (hostIsNew)
		error = FUNC2(ifp, ifra, ia, flags);

	return (error);
}