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
struct tseg_qent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* merge_fwd ; 
 void* merge_into ; 
 int nmbclusters ; 
 int /*<<< orphan*/  nmbclusters_change ; 
 void* reass_entry ; 
 void* reass_fullwalk ; 
 void* reass_nospace ; 
 void* reass_path1 ; 
 void* reass_path2 ; 
 void* reass_path3 ; 
 void* reass_path4 ; 
 void* reass_path5 ; 
 void* reass_path6 ; 
 void* reass_path7 ; 
 int tcp_reass_maxseg ; 
 int /*<<< orphan*/  tcp_reass_zone ; 
 int /*<<< orphan*/  tcp_reass_zone_change ; 
 void* tcp_zero_input ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5(void)
{

	tcp_reass_maxseg = nmbclusters / 16;
	FUNC1("net.inet.tcp.reass.maxsegments",
	    &tcp_reass_maxseg);
	tcp_reass_zone = FUNC3("tcpreass", sizeof (struct tseg_qent),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	/* Set the zone limit and read back the effective value. */
	tcp_reass_maxseg = FUNC4(tcp_reass_zone,
	    tcp_reass_maxseg);
#ifdef TCP_REASS_COUNTERS
	reass_path1 = counter_u64_alloc(M_WAITOK);
	reass_path2 = counter_u64_alloc(M_WAITOK);
	reass_path3 = counter_u64_alloc(M_WAITOK);
	reass_path4 = counter_u64_alloc(M_WAITOK);
	reass_path5 = counter_u64_alloc(M_WAITOK);
	reass_path6 = counter_u64_alloc(M_WAITOK);
	reass_path7 = counter_u64_alloc(M_WAITOK);
	reass_fullwalk = counter_u64_alloc(M_WAITOK);
	reass_nospace = counter_u64_alloc(M_WAITOK);
	reass_entry = counter_u64_alloc(M_WAITOK);
	merge_fwd = counter_u64_alloc(M_WAITOK);
	merge_into = counter_u64_alloc(M_WAITOK);
	tcp_zero_input = counter_u64_alloc(M_WAITOK);
#endif
	FUNC0(nmbclusters_change,
	    tcp_reass_zone_change, NULL, EVENTHANDLER_PRI_ANY);

}