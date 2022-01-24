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
struct schan {int chan; int /*<<< orphan*/  name; int /*<<< orphan*/  state; struct mn_softc* sc; } ;
struct mn_softc {char* name; struct schan** ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOWN ; 
 int /*<<< orphan*/  M_MN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static void
FUNC2(struct mn_softc *sc, int chan)
{
	struct schan *sch;

	sch = sc->ch[chan] = (struct schan *)FUNC0(sizeof *sc->ch[chan], 
	    M_MN, M_WAITOK | M_ZERO);
	sch->sc = sc;
	sch->state = DOWN;
	sch->chan = chan;
	FUNC1(sch->name, "%s%d", sc->name, chan);
	return;
}