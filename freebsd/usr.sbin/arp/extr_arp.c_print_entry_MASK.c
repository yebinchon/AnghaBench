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
struct timespec {scalar_t__ tv_sec; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr_dl {scalar_t__ sdl_alen; int sdl_type; int sdl_nlen; scalar_t__ sdl_index; } ;
struct TYPE_2__ {scalar_t__ rmx_expire; } ;
struct rt_msghdr {int rtm_flags; TYPE_1__ rtm_rmx; } ;
struct if_nameindex {scalar_t__ if_index; scalar_t__ if_name; } ;
struct hostent {char* h_name; } ;
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ ETHER_ADDR_LEN ; 
#define  IFT_ATM 134 
#define  IFT_BRIDGE 133 
#define  IFT_ETHER 132 
#define  IFT_FDDI 131 
#define  IFT_IEEE1394 130 
#define  IFT_INFINIBAND 129 
#define  IFT_L2VLAN 128 
 scalar_t__ FUNC0 (struct sockaddr_dl*) ; 
 int RTF_ANNOUNCE ; 
 scalar_t__ TRY_AGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (struct ether_addr*) ; 
 scalar_t__ expire_time ; 
 struct hostent* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ h_errno ; 
 struct if_nameindex* FUNC4 () ; 
 struct if_nameindex* ifnameindex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_dl*) ; 
 int nflag ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(struct sockaddr_dl *sdl,
	struct sockaddr_in *addr, struct rt_msghdr *rtm)
{
	const char *host;
	struct hostent *hp;
	struct if_nameindex *p;

	if (ifnameindex == NULL)
		if ((ifnameindex = FUNC4()) == NULL)
			FUNC9(1, "cannot retrieve interface names");

	FUNC10("arp-cache");

	if (nflag == 0)
		hp = FUNC3((caddr_t)&(addr->sin_addr),
		    sizeof addr->sin_addr, AF_INET);
	else
		hp = 0;
	if (hp)
		host = hp->h_name;
	else {
		host = "?";
		if (h_errno == TRY_AGAIN)
			nflag = 1;
	}
	FUNC8("{:hostname/%s} ({:ip-address/%s}) at ", host,
	    FUNC5(addr->sin_addr));
	if (sdl->sdl_alen) {
		if ((sdl->sdl_type == IFT_ETHER ||
		    sdl->sdl_type == IFT_L2VLAN ||
		    sdl->sdl_type == IFT_BRIDGE) &&
		    sdl->sdl_alen == ETHER_ADDR_LEN)
			FUNC8("{:mac-address/%s}",
			    FUNC2((struct ether_addr *)FUNC0(sdl)));
		else {
			int n = sdl->sdl_nlen > 0 ? sdl->sdl_nlen + 1 : 0;

			FUNC8("{:mac-address/%s}", FUNC6(sdl) + n);
		}
	} else
		FUNC8("{d:/(incomplete)}{en:incomplete/true}");

	for (p = ifnameindex; p && ifnameindex->if_index &&
	    ifnameindex->if_name; p++) {
		if (p->if_index == sdl->sdl_index) {
			FUNC8(" on {:interface/%s}", p->if_name);
			break;
		}
	}

	if (rtm->rtm_rmx.rmx_expire == 0)
		FUNC8("{d:/ permanent}{en:permanent/true}");
	else {
		static struct timespec tp;
		if (tp.tv_sec == 0)
			FUNC1(CLOCK_MONOTONIC, &tp);
		if ((expire_time = rtm->rtm_rmx.rmx_expire - tp.tv_sec) > 0)
			FUNC8(" expires in {:expires/%d} seconds",
			    (int)expire_time);
		else
			FUNC8("{d:/ expired}{en:expired/true}");
	}

	if (rtm->rtm_flags & RTF_ANNOUNCE)
		FUNC8("{d:/ published}{en:published/true}");

	switch(sdl->sdl_type) {
	case IFT_ETHER:
		FUNC8(" [{:type/ethernet}]");
		break;
	case IFT_FDDI:
		FUNC8(" [{:type/fddi}]");
		break;
	case IFT_ATM:
		FUNC8(" [{:type/atm}]");
		break;
	case IFT_L2VLAN:
		FUNC8(" [{:type/vlan}]");
		break;
	case IFT_IEEE1394:
		FUNC8(" [{:type/firewire}]");
		break;
	case IFT_BRIDGE:
		FUNC8(" [{:type/bridge}]");
		break;
	case IFT_INFINIBAND:
		FUNC8(" [{:type/infiniband}]");
		break;
	default:
		break;
	}

	FUNC8("\n");

	FUNC7("arp-cache");
}