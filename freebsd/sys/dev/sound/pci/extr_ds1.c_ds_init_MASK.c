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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int32_t ;
struct sc_info {size_t type; int ctrlbase; int* pbase; int pbankbase; int pbanksize; scalar_t__ rchn; scalar_t__ pchn; struct pbank** pbank; struct rbank* rbank; int /*<<< orphan*/ * regbase; int /*<<< orphan*/  dev; int /*<<< orphan*/  map; int /*<<< orphan*/  control_dmat; } ;
struct rbank {int dummy; } ;
struct pbank {int dummy; } ;
struct TYPE_2__ {int* mcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DS1_CHANS ; 
 int* DspInst ; 
 scalar_t__ YDSXGR_CTRLINSTRAM ; 
 scalar_t__ YDSXGR_DSPINSTRAM ; 
 scalar_t__ YDSXGR_EFFCTRLBASE ; 
 scalar_t__ YDSXGR_EFFCTRLSIZE ; 
 scalar_t__ YDSXGR_GLOBALCTRL ; 
 scalar_t__ YDSXGR_MAPOFEFFECT ; 
 scalar_t__ YDSXGR_MAPOFREC ; 
 scalar_t__ YDSXGR_MODE ; 
 scalar_t__ YDSXGR_NATIVEADCINVOL ; 
 scalar_t__ YDSXGR_NATIVEDACINVOL ; 
 scalar_t__ YDSXGR_NATIVEDACOUTVOL ; 
 scalar_t__ YDSXGR_PLAYCTRLBASE ; 
 scalar_t__ YDSXGR_PLAYCTRLSIZE ; 
 scalar_t__ YDSXGR_RECCTRLBASE ; 
 scalar_t__ YDSXGR_RECCTRLSIZE ; 
 scalar_t__ YDSXGR_WORKBASE ; 
 scalar_t__ YDSXGR_WORKSIZE ; 
 int YDSXG_CTRLLENGTH ; 
 int YDSXG_DSPLENGTH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 TYPE_1__* ds_devs ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*,int) ; 
 int FUNC7 (struct sc_info*,scalar_t__,int) ; 
 int /*<<< orphan*/  ds_setmap ; 
 int /*<<< orphan*/  FUNC8 (struct sc_info*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sc_info*,int*,int) ; 

__attribute__((used)) static int
FUNC10(struct sc_info *sc)
{
	int i;
	u_int32_t *ci, r, pcs, rcs, ecs, ws, memsz, cb;
	u_int8_t *t;
	void *buf;

	ci = ds_devs[sc->type].mcode;

	FUNC8(sc, YDSXGR_NATIVEDACOUTVOL, 0x00000000, 4);
	FUNC6(sc, 0);
	FUNC8(sc, YDSXGR_MODE, 0x00010000, 4);
	FUNC8(sc, YDSXGR_MODE, 0x00000000, 4);
	FUNC8(sc, YDSXGR_MAPOFREC, 0x00000000, 4);
	FUNC8(sc, YDSXGR_MAPOFEFFECT, 0x00000000, 4);
	FUNC8(sc, YDSXGR_PLAYCTRLBASE, 0x00000000, 4);
	FUNC8(sc, YDSXGR_RECCTRLBASE, 0x00000000, 4);
	FUNC8(sc, YDSXGR_EFFCTRLBASE, 0x00000000, 4);
	r = FUNC7(sc, YDSXGR_GLOBALCTRL, 2);
	FUNC8(sc, YDSXGR_GLOBALCTRL, r & ~0x0007, 2);

	for (i = 0; i < YDSXG_DSPLENGTH; i += 4)
		FUNC8(sc, YDSXGR_DSPINSTRAM + i, DspInst[i >> 2], 4);

	for (i = 0; i < YDSXG_CTRLLENGTH; i += 4)
		FUNC8(sc, YDSXGR_CTRLINSTRAM + i, ci[i >> 2], 4);

	FUNC6(sc, 1);

	pcs = 0;
	for (i = 100; i > 0; i--) {
		pcs = FUNC7(sc, YDSXGR_PLAYCTRLSIZE, 4) << 2;
		if (pcs == sizeof(struct pbank))
			break;
		FUNC0(1000);
	}
	if (pcs != sizeof(struct pbank)) {
		FUNC5(sc->dev, "preposterous playctrlsize (%d)\n", pcs);
		return -1;
	}
	rcs = FUNC7(sc, YDSXGR_RECCTRLSIZE, 4) << 2;
	ecs = FUNC7(sc, YDSXGR_EFFCTRLSIZE, 4) << 2;
	ws = FUNC7(sc, YDSXGR_WORKSIZE, 4) << 2;

	memsz = 64 * 2 * pcs + 2 * 2 * rcs + 5 * 2 * ecs + ws;
	memsz += (64 + 1) * 4;

	if (sc->regbase == NULL) {
		if (FUNC1(FUNC4(sc->dev), 2, 0,
				       BUS_SPACE_MAXADDR_32BIT,
				       BUS_SPACE_MAXADDR,
				       NULL, NULL, memsz, 1, memsz, 0, NULL,
				       NULL, &sc->control_dmat))
			return -1;
		if (FUNC3(sc->control_dmat, &buf, BUS_DMA_NOWAIT, &sc->map))
			return -1;
		if (FUNC2(sc->control_dmat, sc->map, buf, memsz, ds_setmap, sc, 0) || !sc->ctrlbase) {
			FUNC5(sc->dev, "pcs=%d, rcs=%d, ecs=%d, ws=%d, memsz=%d\n",
			      	      pcs, rcs, ecs, ws, memsz);
			return -1;
		}
		sc->regbase = buf;
	} else
		buf = sc->regbase;

	cb = 0;
	t = buf;
	FUNC8(sc, YDSXGR_WORKBASE, sc->ctrlbase + cb, 4);
	cb += ws;
	sc->pbase = (u_int32_t *)(t + cb);
	/* printf("pbase = %p -> 0x%x\n", sc->pbase, sc->ctrlbase + cb); */
	FUNC8(sc, YDSXGR_PLAYCTRLBASE, sc->ctrlbase + cb, 4);
	cb += (64 + 1) * 4;
	sc->rbank = (struct rbank *)(t + cb);
	FUNC8(sc, YDSXGR_RECCTRLBASE, sc->ctrlbase + cb, 4);
	cb += 2 * 2 * rcs;
	FUNC8(sc, YDSXGR_EFFCTRLBASE, sc->ctrlbase + cb, 4);
	cb += 5 * 2 * ecs;

	sc->pbankbase = sc->ctrlbase + cb;
	sc->pbanksize = pcs;
	for (i = 0; i < 64; i++) {
		FUNC9(sc, &sc->pbase[i + 1], 0);
		sc->pbank[i * 2] = (struct pbank *)(t + cb);
		/* printf("pbank[%d] = %p -> 0x%x; ", i * 2, (struct pbank *)(t + cb), sc->ctrlbase + cb - vtophys(t + cb)); */
		cb += pcs;
		sc->pbank[i * 2 + 1] = (struct pbank *)(t + cb);
		/* printf("pbank[%d] = %p -> 0x%x\n", i * 2 + 1, (struct pbank *)(t + cb), sc->ctrlbase + cb - vtophys(t + cb)); */
		cb += pcs;
	}
	FUNC9(sc, &sc->pbase[0], DS1_CHANS * 2);

	sc->pchn = sc->rchn = 0;
	FUNC8(sc, YDSXGR_NATIVEDACOUTVOL, 0x3fff3fff, 4);
	FUNC8(sc, YDSXGR_NATIVEADCINVOL, 0x3fff3fff, 4);
	FUNC8(sc, YDSXGR_NATIVEDACINVOL, 0x3fff3fff, 4);

	return 0;
}