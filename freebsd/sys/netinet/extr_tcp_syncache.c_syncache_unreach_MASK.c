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
typedef  int /*<<< orphan*/  tcp_seq ;
struct syncache_head {int dummy; } ;
struct syncache {scalar_t__ sc_iss; int sc_flags; int sc_rxmits; } ;
struct in_conninfo {int dummy; } ;

/* Variables and functions */
 int SCF_UNREACH ; 
 int /*<<< orphan*/  FUNC0 (struct syncache_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct syncache_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct syncache*,struct syncache_head*) ; 
 struct syncache* FUNC6 (struct in_conninfo*,struct syncache_head**) ; 
 int /*<<< orphan*/  tcps_sc_unreach ; 

void
FUNC7(struct in_conninfo *inc, tcp_seq th_seq)
{
	struct syncache *sc;
	struct syncache_head *sch;

	if (FUNC4())
		return;
	sc = FUNC6(inc, &sch);	/* returns locked sch */
	FUNC0(sch);
	if (sc == NULL)
		goto done;

	/* If the sequence number != sc_iss, then it's a bogus ICMP msg */
	if (FUNC3(th_seq) != sc->sc_iss)
		goto done;

	/*
	 * If we've rertransmitted 3 times and this is our second error,
	 * we remove the entry.  Otherwise, we allow it to continue on.
	 * This prevents us from incorrectly nuking an entry during a
	 * spurious network outage.
	 *
	 * See tcp_notify().
	 */
	if ((sc->sc_flags & SCF_UNREACH) == 0 || sc->sc_rxmits < 3 + 1) {
		sc->sc_flags |= SCF_UNREACH;
		goto done;
	}
	FUNC5(sc, sch);
	FUNC2(tcps_sc_unreach);
done:
	FUNC1(sch);
}