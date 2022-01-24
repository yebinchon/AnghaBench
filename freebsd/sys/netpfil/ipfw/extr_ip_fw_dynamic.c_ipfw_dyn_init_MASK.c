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
struct ip_fw_chain {int dummy; } ;
struct dyn_parent {int dummy; } ;
struct dyn_ipv6_state {int dummy; } ;
struct dyn_ipv4_state {int dummy; } ;
struct dyn_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 scalar_t__ V_curr_dyn_buckets ; 
 int V_dyn_ack_lifetime ; 
 int /*<<< orphan*/ * V_dyn_bucket_lock ; 
 int V_dyn_buckets_max ; 
 void* V_dyn_data_zone ; 
 int /*<<< orphan*/  V_dyn_expired_ipv4 ; 
 int /*<<< orphan*/  V_dyn_expired_ipv6 ; 
 int V_dyn_fin_lifetime ; 
 int /*<<< orphan*/  V_dyn_hashseed ; 
 int /*<<< orphan*/ * V_dyn_ipv4 ; 
 int /*<<< orphan*/ * V_dyn_ipv4_parent ; 
 void* V_dyn_ipv4_zone ; 
 int /*<<< orphan*/ * V_dyn_ipv6 ; 
 int /*<<< orphan*/ * V_dyn_ipv6_parent ; 
 void* V_dyn_ipv6_zone ; 
 int V_dyn_keepalive ; 
 int V_dyn_keepalive_interval ; 
 int /*<<< orphan*/  V_dyn_keepalive_last ; 
 int V_dyn_keepalive_period ; 
 int V_dyn_max ; 
 int V_dyn_parent_max ; 
 void* V_dyn_parent_zone ; 
 int V_dyn_rst_lifetime ; 
 int V_dyn_short_lifetime ; 
 int V_dyn_syn_lifetime ; 
 int /*<<< orphan*/  V_dyn_timeout ; 
 int V_dyn_udp_lifetime ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  FUNC7 (struct ip_fw_chain*,int) ; 
 int /*<<< orphan*/  dyn_hp_cache ; 
 int /*<<< orphan*/  dyn_opcodes ; 
 int /*<<< orphan*/  dyn_tick ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  time_uptime ; 
 void* FUNC9 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int) ; 

void
FUNC11(struct ip_fw_chain *chain)
{

#ifdef IPFIREWALL_JENKINSHASH
	V_dyn_hashseed = arc4random();
#endif
	V_dyn_max = 16384;		/* max # of states */
	V_dyn_parent_max = 4096;	/* max # of parent states */
	V_dyn_buckets_max = 8192;	/* must be power of 2 */

	V_dyn_ack_lifetime = 300;
	V_dyn_syn_lifetime = 20;
	V_dyn_fin_lifetime = 1;
	V_dyn_rst_lifetime = 1;
	V_dyn_udp_lifetime = 10;
	V_dyn_short_lifetime = 5;

	V_dyn_keepalive_interval = 20;
	V_dyn_keepalive_period = 5;
	V_dyn_keepalive = 1;		/* send keepalives */
	V_dyn_keepalive_last = time_uptime;

	V_dyn_data_zone = FUNC9("IPFW dynamic states data",
	    sizeof(struct dyn_data), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	FUNC10(V_dyn_data_zone, V_dyn_max);

	V_dyn_parent_zone = FUNC9("IPFW parent dynamic states",
	    sizeof(struct dyn_parent), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
	FUNC10(V_dyn_parent_zone, V_dyn_parent_max);

	FUNC3(&V_dyn_expired_ipv4);
	V_dyn_ipv4 = NULL;
	V_dyn_ipv4_parent = NULL;
	V_dyn_ipv4_zone = FUNC9("IPFW IPv4 dynamic states",
	    sizeof(struct dyn_ipv4_state), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);

#ifdef INET6
	SLIST_INIT(&V_dyn_expired_ipv6);
	V_dyn_ipv6 = NULL;
	V_dyn_ipv6_parent = NULL;
	V_dyn_ipv6_zone = uma_zcreate("IPFW IPv6 dynamic states",
	    sizeof(struct dyn_ipv6_state), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);
#endif

	/* Initialize buckets. */
	V_curr_dyn_buckets = 0;
	V_dyn_bucket_lock = NULL;
	FUNC7(chain, 256);

	if (FUNC2(curvnet))
		dyn_hp_cache = FUNC8(mp_ncpus * sizeof(void *), M_IPFW,
		    M_WAITOK | M_ZERO);

	FUNC0();
	FUNC5(&V_dyn_timeout, 1);
	FUNC6(&V_dyn_timeout, hz, dyn_tick, curvnet);
	FUNC1(FUNC2(curvnet), dyn_opcodes);
}