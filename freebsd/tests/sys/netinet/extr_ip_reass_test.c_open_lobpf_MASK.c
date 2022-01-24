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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
struct ifaddrs {int ifa_flags; TYPE_2__* ifa_addr; int /*<<< orphan*/  ifa_name; struct ifaddrs* ifa_next; } ;
typedef  int /*<<< orphan*/  in_addr_t ;
typedef  int /*<<< orphan*/  ifr ;
struct TYPE_4__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIOCSETIF ; 
 scalar_t__ ENOENT ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddrs*) ; 
 int FUNC4 (struct ifaddrs**) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(in_addr_t *addrp)
{
	struct ifreq ifr;
	struct ifaddrs *ifa, *ifap;
	int error, fd;

	fd = FUNC7("/dev/bpf0", O_RDWR);
	if (fd < 0 && errno == ENOENT)
		FUNC2("no BPF device available");
	FUNC1(fd >= 0, "open(/dev/bpf0): %s", FUNC8(errno));

	error = FUNC4(&ifap);
	FUNC0(error == 0);
	for (ifa = ifap; ifa != NULL; ifa = ifa->ifa_next)
		if ((ifa->ifa_flags & IFF_LOOPBACK) != 0 &&
		    ifa->ifa_addr->sa_family == AF_INET)
			break;
	if (ifa == NULL)
		FUNC2("no loopback address found");

	FUNC6(&ifr, 0, sizeof(ifr));
	FUNC9(ifr.ifr_name, ifa->ifa_name, IFNAMSIZ);
	error = FUNC5(fd, BIOCSETIF, &ifr);
	FUNC1(error == 0, "ioctl(BIOCSETIF): %s", FUNC8(errno));

	*addrp = ((struct sockaddr_in *)(void *)ifa->ifa_addr)->sin_addr.s_addr;

	FUNC3(ifap);

	return (fd);
}