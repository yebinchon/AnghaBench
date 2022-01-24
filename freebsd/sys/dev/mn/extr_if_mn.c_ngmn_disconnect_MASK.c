#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct trxd {struct trxd* vnext; TYPE_6__* m; } ;
struct schan {int chan; scalar_t__ state; struct mn_softc* sc; } ;
struct TYPE_8__ {int* ts; int ccb; TYPE_1__* cs; } ;
struct mn_softc {char* name; int /*<<< orphan*/  nhooks; TYPE_5__** ch; TYPE_3__* m32x; TYPE_2__ m32_mem; } ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_12__ {TYPE_4__ m_pkthdr; } ;
struct TYPE_11__ {int ts; struct trxd* x1; int /*<<< orphan*/  tx_pending; struct trxd* r1; } ;
struct TYPE_9__ {int cmd; int stat; } ;
struct TYPE_7__ {int flags; scalar_t__ itbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DOWN ; 
 struct schan* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (struct trxd*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 

__attribute__((used)) static int
FUNC5(hook_p hook)
{
	int chan, i;
	struct mn_softc *sc;
	struct schan *sch;
	struct trxd *dp, *dp2;
	u_int32_t u;

	sch = FUNC1(hook);
	chan = sch->chan;
	sc = sch->sc;
	
	if (sch->state == DOWN) 
		return (0);
	sch->state = DOWN;

	/* Set receiver & transmitter off */
	sc->m32_mem.cs[chan].flags = 0x80920006;
	sc->m32_mem.cs[chan].itbs = 0;

	/* free the timeslots */
	for (i = 0; i < 32; i++)
		if (sc->ch[chan]->ts & (1 << i)) 
			sc->m32_mem.ts[i] = 0x20002000;

	/* Initialize this channel */
	sc->m32_mem.ccb = 0x00008000 + (chan << 8);
	sc->m32x->cmd = 0x1;
	FUNC0(30);
	u = sc->m32x->stat; 
	if (!(u & 1))
		FUNC4("%s: zap chan %d stat %08x\n", sc->name, chan, u);
	sc->m32x->stat = 1; 
	
	/* Free all receive descriptors and mbufs */
	for (dp = sc->ch[chan]->r1; dp ; dp = dp2) {
		if (dp->m)
			FUNC2(dp->m);
		sc->ch[chan]->r1 = dp2 = dp->vnext;
		FUNC3(dp);
	}

	/* Free all transmit descriptors and mbufs */
	for (dp = sc->ch[chan]->x1; dp ; dp = dp2) {
		if (dp->m) {
			sc->ch[chan]->tx_pending -= dp->m->m_pkthdr.len;
			FUNC2(dp->m);
		}
		sc->ch[chan]->x1 = dp2 = dp->vnext;
		FUNC3(dp);
	}
	sc->nhooks--;
	return(0);
}