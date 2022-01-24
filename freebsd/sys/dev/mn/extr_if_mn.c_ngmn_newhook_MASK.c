#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct mn_softc {scalar_t__ framing; int /*<<< orphan*/  nhooks; TYPE_1__** ch; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_2__ {scalar_t__ state; int ts; int tx_limit; int /*<<< orphan*/  hook; } ;

/* Variables and functions */
 scalar_t__ E1 ; 
 scalar_t__ E1U ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct mn_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UP ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mn_softc*,int) ; 
 int FUNC4 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static int
FUNC6(node_p node, hook_p hook, const char *name)
{
	u_int32_t ts, chan;
	struct mn_softc *sc;
	int nbit;

	sc = FUNC1(node);

	if (name[0] != 't' || name[1] != 's')
		return (EINVAL);

	ts = FUNC4(name + 2, &nbit);
	FUNC5("%d bits %x\n", nbit, ts);
	if (sc->framing == E1 && (ts & 1))
		return (EINVAL);
	if (sc->framing == E1U && nbit != 32)
		return (EINVAL);
	if (ts == 0)
		return (EINVAL);
	if (sc->framing == E1)
		chan = FUNC2(ts) - 1;
	else
		chan = 1;
	if (!sc->ch[chan])
		FUNC3(sc, chan);
	else if (sc->ch[chan]->state == UP)
		return (EBUSY);
	sc->ch[chan]->ts = ts;
	sc->ch[chan]->hook = hook;
	sc->ch[chan]->tx_limit = nbit * 8;
	FUNC0(hook, sc->ch[chan]);
	sc->nhooks++;
	return(0);
}