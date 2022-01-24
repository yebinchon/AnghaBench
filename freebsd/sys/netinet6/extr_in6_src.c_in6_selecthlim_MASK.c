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
typedef  int /*<<< orphan*/  uint32_t ;
struct nhop6_basic {struct ifnet* nh_ifp; } ;
struct TYPE_3__ {int /*<<< orphan*/  inc_fibnum; } ;
struct inpcb {scalar_t__ in6p_hops; int /*<<< orphan*/  in6p_faddr; TYPE_1__ inp_inc; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {int chlim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct ifnet*) ; 
 int V_ip6_defhlim ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nhop6_basic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct inpcb *inp, struct ifnet *ifp)
{

	if (inp && inp->in6p_hops >= 0)
		return (inp->in6p_hops);
	else if (ifp)
		return (FUNC1(ifp)->chlim);
	else if (inp && !FUNC0(&inp->in6p_faddr)) {
		struct nhop6_basic nh6;
		struct in6_addr dst;
		uint32_t fibnum, scopeid;
		int hlim;

		fibnum = inp->inp_inc.inc_fibnum;
		FUNC3(&inp->in6p_faddr, &dst, &scopeid);
		if (FUNC2(fibnum, &dst, scopeid, 0, 0, &nh6)==0){
			hlim = FUNC1(nh6.nh_ifp)->chlim;
			return (hlim);
		}
	}
	return (V_ip6_defhlim);
}