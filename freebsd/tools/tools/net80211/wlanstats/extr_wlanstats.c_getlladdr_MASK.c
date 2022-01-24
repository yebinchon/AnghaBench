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
struct TYPE_3__ {int /*<<< orphan*/  ifr_name; } ;
struct wlanstatfoo_p {int /*<<< orphan*/  mac; TYPE_1__ ifr; } ;
struct sockaddr_dl {int dummy; } ;
struct ifaddrs {TYPE_2__* ifa_addr; int /*<<< orphan*/  ifa_name; struct ifaddrs* ifa_next; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_dl const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifaddrs*) ; 
 scalar_t__ FUNC5 (struct ifaddrs**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct wlanstatfoo_p *wf)
{
	const struct sockaddr_dl *sdl;
	struct ifaddrs *ifp, *p;

	if (FUNC5(&ifp) != 0)
		FUNC2(1, "getifaddrs");
	for (p = ifp; p != NULL; p = p->ifa_next)
		if (FUNC6(p->ifa_name, wf->ifr.ifr_name) == 0 &&
		    p->ifa_addr->sa_family == AF_LINK)
			break;
	if (p == NULL)
		FUNC3(1, "did not find link layer address for interface %s",
			wf->ifr.ifr_name);
	sdl = (const struct sockaddr_dl *) p->ifa_addr;
	FUNC0(wf->mac, FUNC1(sdl));
	FUNC4(ifp);
}