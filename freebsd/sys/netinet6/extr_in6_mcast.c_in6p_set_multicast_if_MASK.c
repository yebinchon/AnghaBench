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
typedef  scalar_t__ u_int ;
struct sockopt {int sopt_valsize; } ;
struct ip6_moptions {struct ifnet* im6o_multicast_ifp; } ;
struct inpcb {int dummy; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 scalar_t__ V_if_index ; 
 struct ifnet* FUNC1 (scalar_t__) ; 
 struct ip6_moptions* FUNC2 (struct inpcb*) ; 
 int FUNC3 (struct sockopt*,scalar_t__*,int,int) ; 

__attribute__((used)) static int
FUNC4(struct inpcb *inp, struct sockopt *sopt)
{
	struct ifnet		*ifp;
	struct ip6_moptions	*imo;
	u_int			 ifindex;
	int			 error;

	if (sopt->sopt_valsize != sizeof(u_int))
		return (EINVAL);

	error = FUNC3(sopt, &ifindex, sizeof(u_int), sizeof(u_int));
	if (error)
		return (error);
	if (V_if_index < ifindex)
		return (EINVAL);
	if (ifindex == 0)
		ifp = NULL;
	else {
		ifp = FUNC1(ifindex);
		if (ifp == NULL)
			return (EINVAL);
		if ((ifp->if_flags & IFF_MULTICAST) == 0)
			return (EADDRNOTAVAIL);
	}
	imo = FUNC2(inp);
	imo->im6o_multicast_ifp = ifp;
	FUNC0(inp);

	return (0);
}