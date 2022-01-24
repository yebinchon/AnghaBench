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
struct tcphdr {int dummy; } ;
struct in_conninfo {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct in_conninfo*,struct tcphdr*,void*,void const*) ; 
 scalar_t__ tcp_log_in_vain ; 

char *
FUNC1(struct in_conninfo *inc, struct tcphdr *th, void *ip4hdr,
    const void *ip6hdr)
{

	/* Is logging enabled? */
	if (tcp_log_in_vain == 0)
		return (NULL);

	return (FUNC0(inc, th, ip4hdr, ip6hdr));
}