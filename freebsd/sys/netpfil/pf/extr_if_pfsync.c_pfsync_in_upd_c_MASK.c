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
struct pfsync_upd_c {scalar_t__ timeout; TYPE_2__ dst; TYPE_2__ src; int /*<<< orphan*/  id; int /*<<< orphan*/  creatorid; } ;
struct pfsync_softc {int /*<<< orphan*/ * sc_buckets; } ;
struct pfsync_pkt {int dummy; } ;
struct TYPE_12__ {scalar_t__ state; } ;
struct pf_state {int state_flags; scalar_t__ timeout; void* pfsync_time; void* expire; TYPE_5__ dst; TYPE_5__ src; TYPE_1__** key; } ;
struct mbuf {scalar_t__ m_data; } ;
struct TYPE_14__ {scalar_t__ debug; } ;
struct TYPE_13__ {int /*<<< orphan*/  pfsyncs_stale; int /*<<< orphan*/  pfsyncs_badval; int /*<<< orphan*/  pfsyncs_badlen; } ;
struct TYPE_10__ {scalar_t__ proto; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 int PFSTATE_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ PFTM_MAX ; 
 scalar_t__ PF_DEBUG_MISC ; 
 size_t PF_SK_WIRE ; 
 int /*<<< orphan*/  FUNC2 (struct pf_state*) ; 
 scalar_t__ PF_TCPS_PROXY_DST ; 
 TYPE_9__ V_pf_status ; 
 struct pfsync_softc* V_pfsyncif ; 
 TYPE_8__ V_pfsyncstats ; 
 struct mbuf* FUNC3 (struct mbuf*,int,int,int*) ; 
 struct pf_state* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pf_state*,int) ; 
 int FUNC10 (struct pf_state*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct pf_state*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 void* time_uptime ; 

__attribute__((used)) static int
FUNC13(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{
	struct pfsync_softc *sc = V_pfsyncif;
	struct pfsync_upd_c *ua, *up;
	struct pf_state *st;
	int len = count * sizeof(*up);
	int sync;
	struct mbuf *mp;
	int offp, i;

	mp = FUNC3(m, offset, len, &offp);
	if (mp == NULL) {
		V_pfsyncstats.pfsyncs_badlen++;
		return (-1);
	}
	ua = (struct pfsync_upd_c *)(mp->m_data + offp);

	for (i = 0; i < count; i++) {
		up = &ua[i];

		/* check for invalid values */
		if (up->timeout >= PFTM_MAX ||
		    up->src.state > PF_TCPS_PROXY_DST ||
		    up->dst.state > PF_TCPS_PROXY_DST) {
			if (V_pf_status.debug >= PF_DEBUG_MISC) {
				FUNC12("pfsync_input: "
				    "PFSYNC_ACT_UPD_C: "
				    "invalid value\n");
			}
			V_pfsyncstats.pfsyncs_badval++;
			continue;
		}

		st = FUNC4(up->id, up->creatorid);
		if (st == NULL) {
			/* We don't have this state. Ask for it. */
			FUNC0(&sc->sc_buckets[0]);
			FUNC8(up->creatorid, up->id);
			FUNC1(&sc->sc_buckets[0]);
			continue;
		}

		if (st->state_flags & PFSTATE_ACK) {
			FUNC9(st, 1);
		}

		if (st->key[PF_SK_WIRE]->proto == IPPROTO_TCP)
			sync = FUNC10(st, &up->src, &up->dst);
		else {
			sync = 0;

			/*
			 * Non-TCP protocol state machine always go
			 * forwards
			 */
			if (st->src.state > up->src.state)
				sync++;
			else
				FUNC5(&up->src, &st->src);
			if (st->dst.state > up->dst.state)
				sync++;
			else
				FUNC5(&up->dst, &st->dst);
		}
		if (sync < 2) {
			FUNC6(&up->dst, &st->dst);
			FUNC5(&up->dst, &st->dst);
			st->expire = time_uptime;
			st->timeout = up->timeout;
		}
		st->pfsync_time = time_uptime;

		if (sync) {
			V_pfsyncstats.pfsyncs_stale++;

			FUNC11(st);
			FUNC2(st);
			FUNC7(sc);
			continue;
		}
		FUNC2(st);
	}

	return (len);
}