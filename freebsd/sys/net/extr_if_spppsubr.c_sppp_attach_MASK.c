#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ifq_maxlen; int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_5__ {int ifq_maxlen; int /*<<< orphan*/  ifq_mtx; } ;
struct sppp {int /*<<< orphan*/  pp_comp; int /*<<< orphan*/  if_start; int /*<<< orphan*/  ifstart_callout; int /*<<< orphan*/  confflags; int /*<<< orphan*/  pp_last_sent; int /*<<< orphan*/  pp_last_recv; TYPE_3__ pp_fastq; TYPE_2__ pp_cpq; int /*<<< orphan*/  pp_down; int /*<<< orphan*/  pp_up; int /*<<< orphan*/  pp_phase; int /*<<< orphan*/ * pp_rseq; int /*<<< orphan*/ * pp_seq; scalar_t__ pp_alivecnt; scalar_t__ pp_loopcnt; int /*<<< orphan*/  pp_flags; int /*<<< orphan*/  keepalive_callout; int /*<<< orphan*/  mtx; } ;
struct slcompress {int dummy; } ;
struct TYPE_4__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_start; TYPE_1__ if_snd; int /*<<< orphan*/  if_output; int /*<<< orphan*/  if_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_ENABLE_IPV6 ; 
 int /*<<< orphan*/  CONF_ENABLE_VJ ; 
 int IFF_MULTICAST ; 
 int IFF_POINTOPOINT ; 
 struct sppp* FUNC0 (struct ifnet*) ; 
 int MTX_DEF ; 
 int /*<<< orphan*/ * MTX_NETWORK_LOCK ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PHASE_DEAD ; 
 int /*<<< orphan*/  PP_KEEPALIVE ; 
 int /*<<< orphan*/  PP_MTU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sppp*) ; 
 int /*<<< orphan*/  sppp_ifstart ; 
 int /*<<< orphan*/  FUNC9 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC10 (struct sppp*) ; 
 int /*<<< orphan*/  sppp_keepalive ; 
 int /*<<< orphan*/  FUNC11 (struct sppp*) ; 
 int /*<<< orphan*/  sppp_output ; 
 int /*<<< orphan*/  FUNC12 (struct sppp*) ; 
 int /*<<< orphan*/  sppp_pp_down ; 
 int /*<<< orphan*/  sppp_pp_up ; 
 int /*<<< orphan*/  time_uptime ; 

void
FUNC13(struct ifnet *ifp)
{
	struct sppp *sp = FUNC0(ifp);

	/* Initialize mtx lock */
	FUNC5(&sp->mtx, "sppp", MTX_NETWORK_LOCK, MTX_DEF | MTX_RECURSE);
	
	/* Initialize keepalive handler. */
 	FUNC2(&sp->keepalive_callout, 1);
	FUNC3(&sp->keepalive_callout, hz * 10, sppp_keepalive,
 		    (void *)sp); 

	ifp->if_mtu = PP_MTU;
	ifp->if_flags = IFF_POINTOPOINT | IFF_MULTICAST;
	ifp->if_output = sppp_output;
#if 0
	sp->pp_flags = PP_KEEPALIVE;
#endif
 	ifp->if_snd.ifq_maxlen = 32;
 	sp->pp_fastq.ifq_maxlen = 32;
 	sp->pp_cpq.ifq_maxlen = 20;
	sp->pp_loopcnt = 0;
	sp->pp_alivecnt = 0;
	FUNC1(&sp->pp_seq[0], sizeof(sp->pp_seq));
	FUNC1(&sp->pp_rseq[0], sizeof(sp->pp_rseq));
	sp->pp_phase = PHASE_DEAD;
	sp->pp_up = sppp_pp_up;
	sp->pp_down = sppp_pp_down;
	if(!FUNC6(&sp->pp_cpq.ifq_mtx))
		FUNC5(&sp->pp_cpq.ifq_mtx, "sppp_cpq", NULL, MTX_DEF);
	if(!FUNC6(&sp->pp_fastq.ifq_mtx))
		FUNC5(&sp->pp_fastq.ifq_mtx, "sppp_fastq", NULL, MTX_DEF);
	sp->pp_last_recv = sp->pp_last_sent = time_uptime;
	sp->confflags = 0;
#ifdef INET
	sp->confflags |= CONF_ENABLE_VJ;
#endif
#ifdef INET6
	sp->confflags |= CONF_ENABLE_IPV6;
#endif
 	FUNC2(&sp->ifstart_callout, 1);
	sp->if_start = ifp->if_start;
	ifp->if_start = sppp_ifstart;
	sp->pp_comp = FUNC4(sizeof(struct slcompress), M_TEMP, M_WAITOK);
	FUNC7(sp->pp_comp, -1);
	FUNC11(sp);
	FUNC9(sp);
	FUNC10(sp);
	FUNC12(sp);
	FUNC8(sp);
}