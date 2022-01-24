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
typedef  scalar_t__ uint32_t ;
struct tcpiphdr {int dummy; } ;
struct tcphdr {int dummy; } ;
struct ip6_hdr {int dummy; } ;
struct in_conninfo {int inc_flags; } ;

/* Variables and functions */
 int INC_ISIPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int V_tcp_mssdflt ; 
 int V_tcp_v6mssdflt ; 
 size_t FUNC1 (scalar_t__,scalar_t__) ; 
 size_t FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct in_conninfo*) ; 
 scalar_t__ FUNC4 (struct in_conninfo*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct in_conninfo*,int /*<<< orphan*/ *) ; 

int
FUNC6(struct in_conninfo *inc)
{
	int mss = 0;
	uint32_t thcmtu = 0;
	uint32_t maxmtu = 0;
	size_t min_protoh;

	FUNC0(inc != NULL, ("tcp_mssopt with NULL in_conninfo pointer"));

#ifdef INET6
	if (inc->inc_flags & INC_ISIPV6) {
		mss = V_tcp_v6mssdflt;
		maxmtu = tcp_maxmtu6(inc, NULL);
		min_protoh = sizeof(struct ip6_hdr) + sizeof(struct tcphdr);
	}
#endif
#if defined(INET) && defined(INET6)
	else
#endif
#ifdef INET
	{
		mss = V_tcp_mssdflt;
		maxmtu = tcp_maxmtu(inc, NULL);
		min_protoh = sizeof(struct tcpiphdr);
	}
#endif
#if defined(INET6) || defined(INET)
	thcmtu = tcp_hc_getmtu(inc); /* IPv4 and IPv6 */
#endif

	if (maxmtu && thcmtu)
		mss = FUNC2(maxmtu, thcmtu) - min_protoh;
	else if (maxmtu || thcmtu)
		mss = FUNC1(maxmtu, thcmtu) - min_protoh;

	return (mss);
}