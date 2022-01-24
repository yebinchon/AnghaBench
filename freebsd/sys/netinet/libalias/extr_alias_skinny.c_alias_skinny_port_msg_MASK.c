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
typedef  scalar_t__ u_int32_t ;
struct tcphdr {int th_x2; scalar_t__ th_sum; } ;
struct ip {int dummy; } ;
struct alias_link {int dummy; } ;
struct IpPortMessage {scalar_t__ stationIpPort; } ;
typedef  int /*<<< orphan*/  ConvDirection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alias_link*) ; 
 scalar_t__ FUNC1 (struct ip*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct IpPortMessage *port_msg, struct ip *pip,
    struct tcphdr *tc, struct alias_link *lnk,
    ConvDirection direction)
{
	(void)direction;

	port_msg->stationIpPort = (u_int32_t) FUNC2(FUNC0(lnk));

	tc->th_sum = 0;
#ifdef _KERNEL
	tc->th_x2 = 1;
#else
	tc->th_sum = FUNC1(pip);
#endif
	return (0);
}