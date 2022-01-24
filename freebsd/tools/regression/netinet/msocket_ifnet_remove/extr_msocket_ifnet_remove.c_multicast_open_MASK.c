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
struct TYPE_3__ {void* s_addr; } ;
struct TYPE_4__ {void* s_addr; } ;
struct ip_mreq {TYPE_1__ imr_interface; TYPE_2__ imr_multiaddr; } ;
typedef  int /*<<< orphan*/  imr ;

/* Variables and functions */
 int /*<<< orphan*/  DISC_IP ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_ADD_MEMBERSHIP ; 
 int /*<<< orphan*/  MULTICAST_IP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct ip_mreq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_mreq*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC6(int *sockp, int type, const char *type_string)
{
	struct ip_mreq imr;
	int sock;

	sock = FUNC4(PF_INET, type, 0);
	if (sock < 0) {
		FUNC5("multicast_test: socket(PF_INET, %s, 0)", type_string);
		return (-1);
	}

	FUNC0(&imr, sizeof(imr));
	imr.imr_multiaddr.s_addr = FUNC2(MULTICAST_IP);
	imr.imr_interface.s_addr = FUNC2(DISC_IP);

	if (FUNC3(sock, IPPROTO_IP, IP_ADD_MEMBERSHIP, &imr,
	    sizeof(imr)) < 0) {
		FUNC5("multicast_test: setsockopt(IPPROTO_IP, "
		    "IP_ADD_MEMBERSHIP, {%s, %s})", MULTICAST_IP, DISC_IP);
		FUNC1(sock);
		return (-1);
	}

	*sockp = sock;
	return (0);
}