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
struct mn_softc {char* name; int* riqb; int* tiqb; TYPE_1__* m32x; } ;
struct TYPE_2__ {int stat; int lstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mn_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mn_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(void *xsc)
{
	struct mn_softc *sc;
	u_int32_t stat, lstat, u;
	int i, j;

	sc = xsc;
	stat =  sc->m32x->stat;
	lstat =  sc->m32x->lstat;
#if 0
	if (!stat && !(lstat & 2)) 
		return;
#endif

	if (stat & ~0xc200) {
		FUNC3("%s: I stat=%08x lstat=%08x\n", sc->name, stat, lstat);
	}

	if ((stat & 0x200) || (lstat & 2)) 
		FUNC0(sc);

	for (j = i = 0; i < 64; i ++) {
		u = sc->riqb[i];
		if (u) {
			sc->riqb[i] = 0;
			FUNC1(sc, u);
			if ((u & ~0x1f) == 0x30000800 || (u & ~0x1f) == 0x30000b00) 
				continue;
			u &= ~0x30000400;	/* bits we don't care about */
			if ((u & ~0x1f) == 0x00000900)
				continue;
			if (!(u & ~0x1f))
				continue;
			if (!j)
				FUNC3("%s*: RIQB:", sc->name);
			FUNC3(" [%d]=%08x", i, u);
			j++;
		}
	}
	if (j)
	    FUNC3("\n");

	for (j = i = 0; i < 64; i ++) {
		u = sc->tiqb[i];
		if (u) {
			sc->tiqb[i] = 0;
			FUNC2(sc, u);
			if ((u & ~0x1f) == 0x20000800)
				continue;
			u &= ~0x20000000;	/* bits we don't care about */
			if (!u)
				continue;
			if (!j)
				FUNC3("%s*: TIQB:", sc->name);
			FUNC3(" [%d]=%08x", i, u);
			j++;
		}
	}
	if (j)
		FUNC3("\n");
	sc->m32x->stat = stat;
}