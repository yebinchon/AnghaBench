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
struct sockaddr_dl {scalar_t__ sdl_type; } ;
struct ifaddrs {int ifa_flags; int /*<<< orphan*/  ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int IFF_RUNNING ; 
 int IFF_UP ; 
 scalar_t__ IFT_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddrs*) ; 
 scalar_t__ FUNC1 (struct ifaddrs**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC3(char *dst, size_t len)
{
	struct ifaddrs *ifap, *ifa;
	struct sockaddr_dl *sdl = NULL;
	int nifs;

	if (dst == NULL || len == 0)
		return (0);

	if (FUNC1(&ifap) != 0)
		return (-1);

	/* XXX also check the link state */
	for (nifs = 0, ifa = ifap; ifa; ifa = ifa->ifa_next)
		if (ifa->ifa_addr->sa_family == AF_LINK &&
		    ifa->ifa_flags & IFF_UP && ifa->ifa_flags & IFF_RUNNING) {
			sdl = (struct sockaddr_dl *)ifa->ifa_addr;
			if (sdl->sdl_type == IFT_ETHER) {
				FUNC2(dst, ifa->ifa_name, len);
				nifs++;
			}
		}

	FUNC0(ifap);
	return (nifs == 1 ? 0 : -1);
}