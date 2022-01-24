#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct trxd {int status; int flags; struct trxd* vnext; scalar_t__ next; scalar_t__ data; struct mbuf* m; } ;
struct schan {scalar_t__ state; int prev_error; int last_error; struct trxd* rl; struct trxd* r1; void* last_rxerr; int /*<<< orphan*/  overflow_error; int /*<<< orphan*/  abort_error; int /*<<< orphan*/  long_error; int /*<<< orphan*/  dribble_error; int /*<<< orphan*/  crc_error; int /*<<< orphan*/  short_error; void* last_recv; int /*<<< orphan*/  hook; int /*<<< orphan*/  rx_error; } ;
struct TYPE_3__ {scalar_t__* crxd; } ;
struct mn_softc {char* name; struct schan** ch; TYPE_1__ m32_mem; } ;
struct TYPE_4__ {int len; } ;
struct mbuf {int m_len; struct trxd* m_data; TYPE_2__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct mbuf*) ; 
 scalar_t__ UP ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct trxd*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 void* time_second ; 
 scalar_t__ FUNC6 (struct trxd*) ; 

__attribute__((used)) static void
FUNC7(struct mn_softc *sc, u_int32_t vector)
{
	u_int32_t chan, err;
	struct trxd *dp;
	struct mbuf *m;
	struct schan *sch;

	chan = vector & 0x1f;
	if (!sc->ch[chan])
		return;
	sch = sc->ch[chan];
	if (sch->state != UP) {
		FUNC5("%s: rx_intr when not UP\n", sc->name);
		return;
	}
	vector &= ~0x1f;
	if (vector == 0x30000b00)
		sch->rx_error++;
	for (;;) {
		dp = sch->r1;
		if (FUNC6(dp) == sc->m32_mem.crxd[chan]) 
			return;
		m = dp->m;
		dp->m = NULL;
		m->m_pkthdr.len = m->m_len = (dp->status >> 16) & 0x1fff;
		err = (dp->status >> 8) & 0xff;
		if (!err) {
			int error;
			FUNC2(error, sch->hook, m);
			sch->last_recv = time_second;
			/* we could be down by now... */
			if (sch->state != UP) 
				return;
		} else if (err & 0x40) {
			sch->short_error++;
		} else if (err & 0x10) {
			sch->crc_error++;
		} else if (err & 0x08) {
			sch->dribble_error++;
		} else if (err & 0x04) {
			sch->long_error++;
		} else if (err & 0x02) {
			sch->abort_error++;
		} else if (err & 0x01) {
			sch->overflow_error++;
		}
		if (err) {
			sch->last_rxerr = time_second;
			sch->prev_error = sch->last_error;
			sch->last_error = err;
		}

		sc->ch[chan]->r1 = dp->vnext;

		/* Replenish desc + mbuf supplies */
		if (!m) {
			FUNC1(m, M_NOWAIT, MT_DATA);
			if (m == NULL) {
				FUNC4(dp);
				return; /* ENOBUFS */
			}
			if (!(FUNC0(m, M_NOWAIT))) {
				FUNC4(dp);
				FUNC3(m);
				return; /* ENOBUFS */
			}
		}
		dp->m = m;
		dp->data = FUNC6(m->m_data);
		dp->flags = 0x40000000;
		dp->flags += 1600 << 16;
		dp->next = FUNC6(dp);
		dp->vnext = NULL;
		sc->ch[chan]->rl->next = FUNC6(dp);
		sc->ch[chan]->rl->vnext = dp;
		sc->ch[chan]->rl->flags &= ~0x40000000;
		sc->ch[chan]->rl = dp;
	}
}