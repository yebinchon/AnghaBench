#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ state; } ;
struct pfsync_state {scalar_t__ timeout; TYPE_2__ dst; TYPE_2__ src; int /*<<< orphan*/  creatorid; int /*<<< orphan*/  id; } ;
struct pfsync_softc {int dummy; } ;
struct pfsync_pkt {int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {scalar_t__ state; } ;
struct pf_state {int state_flags; scalar_t__ timeout; void* pfsync_time; void* expire; TYPE_5__ dst; TYPE_5__ src; TYPE_1__** key; } ;
struct mbuf {scalar_t__ m_data; } ;
struct TYPE_14__ {scalar_t__ debug; } ;
struct TYPE_13__ {int /*<<< orphan*/  pfsyncs_stale; int /*<<< orphan*/  pfsyncs_badstate; int /*<<< orphan*/  pfsyncs_badval; int /*<<< orphan*/  pfsyncs_badlen; } ;
struct TYPE_10__ {scalar_t__ proto; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 int PFSTATE_ACK ; 
 scalar_t__ PFTM_MAX ; 
 scalar_t__ PF_DEBUG_MISC ; 
 size_t PF_SK_WIRE ; 
 int /*<<< orphan*/  FUNC0 (struct pf_state*) ; 
 scalar_t__ PF_TCPS_PROXY_DST ; 
 TYPE_9__ V_pf_status ; 
 struct pfsync_softc* V_pfsyncif ; 
 TYPE_8__ V_pfsyncstats ; 
 struct mbuf* FUNC1 (struct mbuf*,int,int,int*) ; 
 struct pf_state* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (struct pfsync_softc*) ; 
 scalar_t__ FUNC6 (struct pfsync_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pf_state*,int) ; 
 int FUNC8 (struct pf_state*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct pf_state*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* time_uptime ; 

__attribute__((used)) static int
FUNC11(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{
	struct pfsync_softc *sc = V_pfsyncif;
	struct pfsync_state *sa, *sp;
	struct pf_state *st;
	int sync;

	struct mbuf *mp;
	int len = count * sizeof(*sp);
	int offp, i;

	mp = FUNC1(m, offset, len, &offp);
	if (mp == NULL) {
		V_pfsyncstats.pfsyncs_badlen++;
		return (-1);
	}
	sa = (struct pfsync_state *)(mp->m_data + offp);

	for (i = 0; i < count; i++) {
		sp = &sa[i];

		/* check for invalid values */
		if (sp->timeout >= PFTM_MAX ||
		    sp->src.state > PF_TCPS_PROXY_DST ||
		    sp->dst.state > PF_TCPS_PROXY_DST) {
			if (V_pf_status.debug >= PF_DEBUG_MISC) {
				FUNC10("pfsync_input: PFSYNC_ACT_UPD: "
				    "invalid value\n");
			}
			V_pfsyncstats.pfsyncs_badval++;
			continue;
		}

		st = FUNC2(sp->id, sp->creatorid);
		if (st == NULL) {
			/* insert the update */
			if (FUNC6(sp, pkt->flags))
				V_pfsyncstats.pfsyncs_badstate++;
			continue;
		}

		if (st->state_flags & PFSTATE_ACK) {
			FUNC7(st, 1);
		}

		if (st->key[PF_SK_WIRE]->proto == IPPROTO_TCP)
			sync = FUNC8(st, &sp->src, &sp->dst);
		else {
			sync = 0;

			/*
			 * Non-TCP protocol state machine always go
			 * forwards
			 */
			if (st->src.state > sp->src.state)
				sync++;
			else
				FUNC3(&sp->src, &st->src);
			if (st->dst.state > sp->dst.state)
				sync++;
			else
				FUNC3(&sp->dst, &st->dst);
		}
		if (sync < 2) {
			FUNC4(&sp->dst, &st->dst);
			FUNC3(&sp->dst, &st->dst);
			st->expire = time_uptime;
			st->timeout = sp->timeout;
		}
		st->pfsync_time = time_uptime;

		if (sync) {
			V_pfsyncstats.pfsyncs_stale++;

			FUNC9(st);
			FUNC0(st);
			FUNC5(sc);
			continue;
		}
		FUNC0(st);
	}

	return (len);
}