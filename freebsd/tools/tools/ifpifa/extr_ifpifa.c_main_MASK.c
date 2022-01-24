#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr_dl {int sdl_type; } ;
struct sockaddr {int sa_family; } ;
struct in_ifaddr {int dummy; } ;
struct in6_ifaddr {int dummy; } ;
struct ifnethead {int dummy; } ;
struct ifnet {char* if_xname; int ifa_refcnt; scalar_t__ ifa_addr; struct ifnethead if_addrhead; } ;
struct ifaddr {char* if_xname; int ifa_refcnt; scalar_t__ ifa_addr; struct ifnethead if_addrhead; } ;
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  kvm_t ;
typedef  int /*<<< orphan*/  ifnethead ;
typedef  int /*<<< orphan*/  ifnet ;
typedef  int /*<<< orphan*/  ifaddr ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_3__ {scalar_t__ n_type; scalar_t__ n_value; } ;

/* Variables and functions */
#define  AF_INET 133 
#define  AF_INET6 132 
#define  AF_LINK 131 
#define  IFT_ETHER 130 
#define  IFT_FDDI 129 
#define  IFT_LOOP 128 
 int INET6_ADDRSTRLEN ; 
 scalar_t__ FUNC0 (struct sockaddr_dl*) ; 
 size_t N_IFNET ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC1 (struct ifnethead*) ; 
 scalar_t__ FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct ether_addr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  if_link ; 
 int /*<<< orphan*/  ifa_link ; 
 int /*<<< orphan*/  FUNC5 (int const,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* nl ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

int
FUNC15(void)
{
	kvm_t *kd;
	char errbuf[_POSIX2_LINE_MAX];
	u_long ifnetaddr, ifnetaddr_next;
	u_long ifaddraddr, ifaddraddr_next;
        struct ifnet ifnet;
        struct ifnethead ifnethead;
        union {
		struct ifaddr ifa;
		struct in_ifaddr in;
		struct in6_ifaddr in6;
        } ifaddr;
	union {
		struct sockaddr	*sa;
		struct sockaddr_dl *sal;
		struct sockaddr_in *sa4;
		struct sockaddr_in6 *sa6;
	} sa;
	char addr[INET6_ADDRSTRLEN];

	kd = FUNC10(NULL, NULL, NULL, O_RDONLY, errbuf);
	if (kd == NULL) {
		FUNC14("kvm_openfiles: %s", errbuf);
		FUNC4(0);
	}

	if (FUNC9(kd, nl) < 0) {
                FUNC14("kvm_nlist: %s", FUNC8(kd));
                goto out;
        }

	if (nl[N_IFNET].n_type == 0) {
		FUNC14("kvm_nlist: no namelist");
		goto out;
	}

	if (FUNC6(kd, nl[N_IFNET].n_value,
		  (char *) &ifnethead, sizeof(ifnethead)) != 0)
		goto out;

	for (ifnetaddr = (u_long) FUNC1(&ifnethead);
	     ifnetaddr != 0;
	     ifnetaddr = ifnetaddr_next) {
		if (FUNC6(kd, ifnetaddr, (char *) &ifnet, sizeof(ifnet)) != 0)
			goto out;
		ifnetaddr_next = (u_long) FUNC2(&ifnet, if_link);

		FUNC11("%s\n", ifnet.if_xname);

		for (ifaddraddr = (u_long) FUNC1(&ifnet.if_addrhead);
		     ifaddraddr != 0;
		     ifaddraddr = ifaddraddr_next) {
			if (FUNC6(kd, ifaddraddr,
				  (char *) &ifaddr, sizeof(ifaddr)) != 0)
				goto out;

			ifaddraddr_next = (u_long)
				FUNC2(&ifaddr.ifa, ifa_link);

			sa.sa = (struct sockaddr *)(
				(unsigned char *) ifaddr.ifa.ifa_addr -
				(unsigned char *) ifaddraddr +
				(unsigned char *) &ifaddr);

			switch (sa.sa->sa_family) {
			case AF_LINK:
				switch (sa.sal->sdl_type) {
				case IFT_ETHER:
				case IFT_FDDI:
	     				FUNC3((struct ether_addr * )
						FUNC0(sa.sal), addr);
					break;

				case IFT_LOOP:
					FUNC13(addr, "loopback");
					break;

				default:
					FUNC12(addr, sizeof(addr),
						 "<Link type %#x>",
						sa.sal->sdl_type);
					break;
				}
				break;

			case AF_INET:
				FUNC5(AF_INET, &sa.sa4->sin_addr,
					addr, sizeof(addr)); 
				break;

			case AF_INET6:
				FUNC5(AF_INET6, &sa.sa6->sin6_addr,
					addr, sizeof(addr)); 
				break;

			default:
				FUNC12(addr, sizeof(addr), "family=%d",
					sa.sa->sa_family);
				break;
			}
		
			FUNC11("\t%s ifa_refcnt=%u\n",
				addr, ifaddr.ifa.ifa_refcnt);
		}
	}
out:
	FUNC7(kd);

	return (0);
}