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
struct TYPE_4__ {int csa; int ccb; int* ts; } ;
struct mn_softc {int tiqb; int riqb; int ltiqb; int lriqb; int piqb; int unit; TYPE_2__ m32_mem; TYPE_1__* m32x; } ;
struct TYPE_3__ {int tiql; int riql; int ltiql; int lriql; int piql; int stat; int cmd; void* piqba; void* lriqba; void* ltiqba; void* riqba; void* tiqba; void* ccba; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NIQB ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 void* FUNC5 (int*) ; 

__attribute__((used)) static int
FUNC6(struct mn_softc *sc)
{
	u_int32_t u;
	int i;

	sc->m32x->ccba = FUNC5(&sc->m32_mem.csa);
	sc->m32_mem.csa = FUNC5(&sc->m32_mem.ccb);

	FUNC1(sc->tiqb, sizeof sc->tiqb);
	sc->m32x->tiqba = FUNC5(&sc->tiqb);
	sc->m32x->tiql = NIQB / 16 - 1;

	FUNC1(sc->riqb, sizeof sc->riqb);
	sc->m32x->riqba = FUNC5(&sc->riqb);
	sc->m32x->riql = NIQB / 16 - 1;

	FUNC1(sc->ltiqb, sizeof sc->ltiqb);
	sc->m32x->ltiqba = FUNC5(&sc->ltiqb);
	sc->m32x->ltiql = NIQB / 16 - 1;

	FUNC1(sc->lriqb, sizeof sc->lriqb);
	sc->m32x->lriqba = FUNC5(&sc->lriqb);
	sc->m32x->lriql = NIQB / 16 - 1;

	FUNC1(sc->piqb, sizeof sc->piqb);
	sc->m32x->piqba = FUNC5(&sc->piqb);
	sc->m32x->piql = NIQB / 16 - 1;

	FUNC3(sc);
	FUNC2(sc);

	u = sc->m32x->stat; 
	sc->m32x->stat = u;
	sc->m32_mem.ccb = 0x4;
	sc->m32x->cmd = 0x1;
	FUNC0(1000);
	u = sc->m32x->stat;
	sc->m32x->stat = u;

	/* set all timeslots to known state */
	for (i = 0; i < 32; i++)
		sc->m32_mem.ts[i] = 0x20002000;

	if (!(u & 1)) {
		FUNC4(
"mn%d: WARNING: Controller failed the PCI bus-master test.\n"
"mn%d: WARNING: Use a PCI slot which can support bus-master cards.\n",
		    sc->unit, sc->unit);
		return  (0);
	}
	return (1);
}