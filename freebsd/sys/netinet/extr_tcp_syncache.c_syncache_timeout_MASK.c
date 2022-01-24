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
struct syncache_head {scalar_t__ sch_nextc; int /*<<< orphan*/  sch_timer; } ;
struct syncache {size_t sc_rxmits; scalar_t__ sc_rxttime; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCPTV_REXMTMAX ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  syncache_timer ; 
 int* tcp_backoff ; 
 int tcp_rexmit_initial ; 
 int /*<<< orphan*/  tcp_rexmit_min ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void
FUNC3(struct syncache *sc, struct syncache_head *sch, int docallout)
{
	int rexmt;

	if (sc->sc_rxmits == 0)
		rexmt = tcp_rexmit_initial;
	else
		FUNC0(rexmt,
		    tcp_rexmit_initial * tcp_backoff[sc->sc_rxmits],
		    tcp_rexmit_min, TCPTV_REXMTMAX);
	sc->sc_rxttime = ticks + rexmt;
	sc->sc_rxmits++;
	if (FUNC1(sc->sc_rxttime, sch->sch_nextc)) {
		sch->sch_nextc = sc->sc_rxttime;
		if (docallout)
			FUNC2(&sch->sch_timer, sch->sch_nextc - ticks,
			    syncache_timer, (void *)sch);
	}
}