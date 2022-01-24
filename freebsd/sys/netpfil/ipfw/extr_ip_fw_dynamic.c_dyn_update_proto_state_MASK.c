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
struct ipfw_flow_id {int proto; } ;
struct dyn_data {scalar_t__ expire; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dyn_data*,int /*<<< orphan*/ ,int) ; 
#define  IPPROTO_TCP 130 
#define  IPPROTO_UDP 129 
#define  IPPROTO_UDPLITE 128 
 int MATCH_FORWARD ; 
 scalar_t__ V_dyn_short_lifetime ; 
 scalar_t__ V_dyn_udp_lifetime ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct dyn_data*,struct ipfw_flow_id const*,void const*,int) ; 
 int /*<<< orphan*/  fwd ; 
 int /*<<< orphan*/  rev ; 
 scalar_t__ time_uptime ; 

__attribute__((used)) static void
FUNC3(struct dyn_data *data, const struct ipfw_flow_id *pkt,
    const void *ulp, int pktlen, int dir)
{
	uint32_t expire;

	/* NOTE: we are in critical section here. */
	switch (pkt->proto) {
	case IPPROTO_UDP:
	case IPPROTO_UDPLITE:
		expire = time_uptime + V_dyn_udp_lifetime;
		break;
	case IPPROTO_TCP:
		expire = FUNC2(data, pkt, ulp, dir);
		break;
	default:
		expire = time_uptime + V_dyn_short_lifetime;
	}
	/*
	 * Expiration timer has the per-second granularity, no need to update
	 * it every time when state is matched.
	 */
	if (data->expire != expire)
		FUNC1(&data->expire, expire);

	if (dir == MATCH_FORWARD)
		FUNC0(data, fwd, pktlen);
	else
		FUNC0(data, rev, pktlen);
}