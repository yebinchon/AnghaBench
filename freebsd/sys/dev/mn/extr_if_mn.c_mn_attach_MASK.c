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
typedef  int u_int32_t ;
struct resource {int dummy; } ;
struct mn_softc {int unit; int /*<<< orphan*/  node; int /*<<< orphan*/  nodename; struct f54rreg* f54r; void* m1v; struct f54wreg* f54w; void* m0v; struct m32xreg* m32x; int /*<<< orphan*/  intrhand; int /*<<< orphan*/ * irq; void* m1p; void* m0p; int /*<<< orphan*/  name; int /*<<< orphan*/  framing; int /*<<< orphan*/  dev; } ;
struct m32xreg {int dummy; } ;
struct f54wreg {int dummy; } ;
struct f54rreg {int vstr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1 ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_NET ; 
 int /*<<< orphan*/  M_MN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 char* NG_MN_NODE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_PERRESPEN ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mn_softc*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mn_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mn_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mn_intr ; 
 int FUNC10 (struct mn_softc*) ; 
 int /*<<< orphan*/  mntypestruct ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 void* FUNC18 (struct resource*) ; 
 void* FUNC19 (struct resource*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC21 (device_t self)
{
	struct mn_softc *sc;
	u_int32_t u;
	u_int32_t ver;
	static int once;
	int rid, error;
	struct resource *res;

	if (!once) {
		if (FUNC13(&mntypestruct))
			FUNC17("ng_newtype failed\n");
		once++;
	}

	sc = (struct mn_softc *)FUNC9(sizeof *sc, M_MN, M_WAITOK | M_ZERO);
	FUNC7(self, sc);

	sc->dev = self;
	sc->unit = FUNC5(self);
	sc->framing = E1;
	FUNC20(sc->name, "mn%d", sc->unit);

        rid = FUNC2(0);
        res = FUNC3(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
        if (res == NULL) {
                FUNC6(self, "Could not map memory\n");
		FUNC8(sc, M_MN);
                return ENXIO;
        }
        sc->m0v = FUNC19(res);
        sc->m0p = FUNC18(res);

        rid = FUNC2(1);
        res = FUNC3(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
        if (res == NULL) {
                FUNC6(self, "Could not map memory\n");
		FUNC8(sc, M_MN);
                return ENXIO;
        }
        sc->m1v = FUNC19(res);
        sc->m1p = FUNC18(res);

	/* Allocate interrupt */
	rid = 0;
	sc->irq = FUNC3(self, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);

	if (sc->irq == NULL) {
		FUNC17("couldn't map interrupt\n");
		FUNC8(sc, M_MN);
		return(ENXIO);
	}

	error = FUNC4(self, sc->irq, INTR_TYPE_NET, NULL, mn_intr, sc, &sc->intrhand);

	if (error) {
		FUNC17("couldn't set up irq\n");
		FUNC8(sc, M_MN);
		return(ENXIO);
	}

	u = FUNC15(self, PCIR_COMMAND, 2);
	FUNC17("%x\n", u);
	FUNC16(self, PCIR_COMMAND, u | PCIM_CMD_PERRESPEN | PCIM_CMD_BUSMASTEREN, 2);
#if 0
	pci_write_config(self, PCIR_COMMAND, 0x02800046, 4);
#endif
	u = FUNC15(self, PCIR_COMMAND, 1);
	FUNC17("%x\n", u);

	ver = FUNC14(self);

	sc->m32x = (struct m32xreg *) sc->m0v;
	sc->f54w = (struct f54wreg *) sc->m1v;
	sc->f54r = (struct f54rreg *) sc->m1v;

	/* We must reset before poking at FALC54 registers */
	u = FUNC10(sc);
	if (!u)
		return (0);

	FUNC17("mn%d: Munich32X", sc->unit);
	switch (ver) {
	case 0x13:
		FUNC17(" Rev 2.2");
		break;
	default:
		FUNC17(" Rev 0x%x\n", ver);
	}
	FUNC17(", Falc54");
	switch (sc->f54r->vstr) {
	case 0:
		FUNC17(" Rev < 1.3\n");
		break;
	case 1:
		FUNC17(" Rev 1.3\n");
		break;
	case 2:
		FUNC17(" Rev 1.4\n");
		break;
	case 0x10:
		FUNC17("-LH Rev 1.1\n");
		break;
	case 0x13:
		FUNC17("-LH Rev 1.3\n");
		break;
	default:
		FUNC17(" Rev 0x%x\n", sc->f54r->vstr);
	}

	if (FUNC11(&mntypestruct, &sc->node) != 0) {
		FUNC17("ng_make_node_common failed\n");
		return (0);
	}
	FUNC0(sc->node, sc);
	FUNC20(sc->nodename, "%s%d", NG_MN_NODE_TYPE, sc->unit);
	if (FUNC12(sc->node, sc->nodename)) {
		FUNC1(sc->node);
		return (0);
	}
	
	return (0);
}