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
struct TYPE_2__ {int ifi_mtu; } ;
struct if_msghdr {int ifm_index; TYPE_1__ ifm_data; } ;

/* Variables and functions */
 int AF_INET6 ; 
 int CTL_NET ; 
 int NET_RT_IFLIST ; 
 int PF_ROUTE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(int ifindex)
{
	int	mib[6];
	char	*buf;
	size_t	msize;
	struct	if_msghdr *ifm;
	int	mtu;

	mib[0] = CTL_NET;
	mib[1] = PF_ROUTE;
	mib[2] = 0;
	mib[3] = AF_INET6;
	mib[4] = NET_RT_IFLIST;
	mib[5] = ifindex;
	if (FUNC4(mib, FUNC3(mib), NULL, &msize, NULL, 0) < 0) {
		FUNC0("sysctl estimate NET_RT_IFLIST");
		/*NOTREACHED*/
	}
	if ((buf = FUNC2(msize)) == NULL) {
		FUNC0("malloc");
		/*NOTREACHED*/
	}
	if (FUNC4(mib, FUNC3(mib), buf, &msize, NULL, 0) < 0) {
		FUNC0("sysctl NET_RT_IFLIST");
		/*NOTREACHED*/
	}
	ifm = (struct if_msghdr *)(void *)buf;
	mtu = ifm->ifm_data.ifi_mtu;
	if (ifindex != ifm->ifm_index) {
		FUNC0("ifindex does not match with ifm_index");
		/*NOTREACHED*/
	}
	FUNC1(buf);
	return mtu;
}