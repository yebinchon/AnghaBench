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
struct ipfw_flow_id {int /*<<< orphan*/  dst_port; int /*<<< orphan*/  src_port; int /*<<< orphan*/  dst_ip; int /*<<< orphan*/  src_ip; int /*<<< orphan*/  dst_ip6; int /*<<< orphan*/  src_ip6; } ;
struct in_addr {void* s_addr; } ;
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  dst ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int INET6_ADDRSTRLEN ; 
 int INET_ADDRSTRLEN ; 
 scalar_t__ FUNC0 (struct ipfw_flow_id const*) ; 
 int /*<<< orphan*/  V_dyn_count ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct in_addr*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(const struct ipfw_flow_id *id, int dyn_type,
    int log_flags, char *prefix, char *postfix)
{
	struct in_addr da;
#ifdef INET6
	char src[INET6_ADDRSTRLEN], dst[INET6_ADDRSTRLEN];
#else
	char src[INET_ADDRSTRLEN], dst[INET_ADDRSTRLEN];
#endif

#ifdef INET6
	if (IS_IP6_FLOW_ID(id)) {
		ip6_sprintf(src, &id->src_ip6);
		ip6_sprintf(dst, &id->dst_ip6);
	} else
#endif
	{
		da.s_addr = FUNC1(id->src_ip);
		FUNC2(AF_INET, &da, src, sizeof(src));
		da.s_addr = FUNC1(id->dst_ip);
		FUNC2(AF_INET, &da, dst, sizeof(dst));
	}
	FUNC4(log_flags, "ipfw: %s type %d %s %d -> %s %d, %d %s\n",
	    prefix, dyn_type, src, id->src_port, dst,
	    id->dst_port, V_dyn_count, postfix);
}