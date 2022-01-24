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
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; void* sin_family; } ;
struct ifaliasreq {int /*<<< orphan*/  ifra_mask; int /*<<< orphan*/  ifra_addr; int /*<<< orphan*/  ifra_name; } ;
typedef  int /*<<< orphan*/  ifra ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCAIFADDR ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct ifaliasreq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct ifaliasreq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(char *ifname, int ifunit, char *ip, char *netmask)
{
	struct sockaddr_in *sinp;
	struct ifaliasreq ifra;
	int s;

	s = FUNC5(PF_INET, SOCK_RAW, 0);
	if (s < 0) {
		FUNC6("ifconfig_inet: socket(PF_INET, SOCK_RAW, 0)");
		return (-1);
	}

	FUNC0(&ifra, sizeof(ifra));
	FUNC4(ifra.ifra_name, sizeof(ifra.ifra_name), "%s%d", ifname,
	    ifunit);

	sinp = (struct sockaddr_in *)&ifra.ifra_addr;
	sinp->sin_family = AF_INET;
	sinp->sin_len = sizeof(ifra.ifra_addr);
	sinp->sin_addr.s_addr = FUNC2(ip);

	sinp = (struct sockaddr_in *)&ifra.ifra_mask;
	sinp->sin_family = AF_INET;
	sinp->sin_len = sizeof(ifra.ifra_addr);
	sinp->sin_addr.s_addr = FUNC2(netmask);

	if (FUNC3(s, SIOCAIFADDR, &ifra) < 0) {
		FUNC6("ifconfig_inet: ioctl(%s%d, SIOCAIFADDR, %s)", ifname,
		    ifunit, ip);
		FUNC1(s);
		return (-1);
	}

	FUNC1(s);
	return (0);
}