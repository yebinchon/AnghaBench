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
struct trxd {int flags; struct mbuf* m; struct trxd* vnext; void* next; void* data; } ;
struct schan {int chan; scalar_t__ state; int tx_pending; int tx_limit; struct mn_softc* sc; } ;
struct mn_softc {char* name; TYPE_3__* m32x; TYPE_1__** ch; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {int m_len; TYPE_2__ m_pkthdr; struct mbuf* m_next; struct trxd* m_data; } ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_6__ {int txpoll; } ;
struct TYPE_4__ {struct trxd* xl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 struct schan* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ UP ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 struct trxd* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct trxd*) ; 
 int mn_maxlatency ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 void* FUNC8 (struct trxd*) ; 

__attribute__((used)) static int
FUNC9(hook_p hook, item_p item)
{
	struct mbuf  *m2;
	struct trxd *dp, *dp2;
	struct schan *sch;
	struct mn_softc *sc;
	int chan, pitch, len;
	struct mbuf *m;

	sch = FUNC3(hook);
	sc = sch->sc;
	chan = sch->chan;

	if (sch->state != UP) {
		FUNC1(item);
		return (0);
	}
	FUNC0(item, m);
	if (sch->tx_pending + m->m_pkthdr.len > sch->tx_limit * mn_maxlatency) {
		FUNC2(m);
		FUNC1(item);
		return (0);
	}
	FUNC1(item);
	pitch = 0;
	m2 = m;
	dp2 = sc->ch[chan]->xl;
	len = m->m_pkthdr.len;
	while (len) {
		dp = FUNC5();
		if (!dp) {
			pitch++;
			FUNC4(m);
			sc->ch[chan]->xl = dp2;
			dp = dp2->vnext;
			while (dp) {
				dp2 = dp->vnext;
				FUNC6(dp);
				dp = dp2;
			}
			sc->ch[chan]->xl->vnext = NULL;
			break;
		}
		dp->data = FUNC8(m2->m_data);
		dp->flags = m2->m_len << 16;
		dp->flags += 1;
		len -= m2->m_len;
		dp->next = FUNC8(dp);
		dp->vnext = NULL;
		sc->ch[chan]->xl->next = FUNC8(dp);
		sc->ch[chan]->xl->vnext = dp;
		sc->ch[chan]->xl = dp;
		if (!len) {
			dp->m = m;
			dp->flags |= 0xc0000000;
			dp2->flags &= ~0x40000000;
		} else {
			dp->m = NULL;
			m2 = m2->m_next;
		}
	} 
	if (pitch)
		FUNC7("%s%d: Short on mem, pitched %d packets\n", 
		    sc->name, chan, pitch);
	else {
#if 0
		printf("%d = %d + %d (%p)\n",
		    sch->tx_pending + m->m_pkthdr.len,
		    sch->tx_pending , m->m_pkthdr.len, m);
#endif
		sch->tx_pending += m->m_pkthdr.len;
		sc->m32x->txpoll &= ~(1 << chan);
	}
	return (0);
}