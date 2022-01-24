#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct isa_ranges {scalar_t__ size; } ;
struct ebus_softc {int sc_nrange; scalar_t__ sc_range; struct ebus_rinfo* sc_rinfo; int /*<<< orphan*/  sc_flags; } ;
struct TYPE_3__ {char* rm_descr; int /*<<< orphan*/  rm_type; } ;
struct ebus_rinfo {struct resource* eri_res; int /*<<< orphan*/  eri_rtype; TYPE_1__ eri_rman; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBUS_PCI ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (struct isa_ranges*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_PERRESPEN ; 
 int PCIM_CMD_SERRESPEN ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  PCIR_CACHELNSZ ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIR_LATTIMER ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 struct resource* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 struct ebus_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct ebus_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ebus_rinfo*,int /*<<< orphan*/ ) ; 
 struct ebus_rinfo* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct isa_ranges*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (struct resource*) ; 
 scalar_t__ FUNC17 (struct resource*) ; 
 scalar_t__ FUNC18 (TYPE_1__*,struct resource*) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct ebus_softc *sc;
	struct ebus_rinfo *eri;
	struct resource *res;
	struct isa_ranges *range;
	phandle_t node;
	int i, rnum, rid;

	sc = FUNC6(dev);
	sc->sc_flags |= EBUS_PCI;

	FUNC14(dev, PCIR_COMMAND,
	    FUNC13(dev, PCIR_COMMAND, 2) | PCIM_CMD_SERRESPEN |
	    PCIM_CMD_PERRESPEN | PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN, 2);
	FUNC14(dev, PCIR_CACHELNSZ, 16 /* 64 bytes */, 1);
	FUNC14(dev, PCIR_LATTIMER, 64 /* 64 PCI cycles */, 1);

	node = FUNC11(dev);
	sc->sc_nrange = FUNC1(node, "ranges",
	    sizeof(struct isa_ranges), &sc->sc_range);
	if (sc->sc_nrange == -1) {
		FUNC7(dev, "could not get ranges property\n");
		return (ENXIO);
	}

	sc->sc_rinfo = FUNC10(sizeof(*sc->sc_rinfo) * sc->sc_nrange, M_DEVBUF,
	    M_WAITOK | M_ZERO);

	/* For every range, there must be a matching resource. */
	for (rnum = 0; rnum < sc->sc_nrange; rnum++) {
		eri = &sc->sc_rinfo[rnum];
		range = &((struct isa_ranges *)sc->sc_range)[rnum];
		eri->eri_rtype = FUNC12(range);
		rid = FUNC3(rnum);
		res = FUNC4(dev, eri->eri_rtype, &rid,
		    RF_ACTIVE);
		if (res == NULL) {
			FUNC7(dev,
			    "could not allocate range resource %d\n", rnum);
			goto fail;
		}
		if (FUNC17(res) != FUNC0(range)) {
			FUNC7(dev,
			    "mismatch in start of range %d (0x%lx/0x%lx)\n",
			    rnum, FUNC17(res), FUNC0(range));
			goto fail;
		}
		if (FUNC16(res) != range->size) {
			FUNC7(dev,
			    "mismatch in size of range %d (0x%lx/0x%x)\n",
			    rnum, FUNC16(res), range->size);
			goto fail;
		}
		eri->eri_res = res;
		eri->eri_rman.rm_type = RMAN_ARRAY;
		eri->eri_rman.rm_descr = "EBus range";
		if (FUNC18(&eri->eri_rman, res) != 0) {
			FUNC7(dev,
			    "could not initialize rman for range %d", rnum);
			goto fail;
		}
	}
	return (FUNC8(dev, sc, node));

 fail:
	for (i = rnum; i >= 0; i--) {
		eri = &sc->sc_rinfo[i];
		if (i < rnum)
			FUNC15(&eri->eri_rman);
		if (eri->eri_res != NULL) {
			FUNC5(dev, eri->eri_rtype,
			    FUNC3(rnum), eri->eri_res);
		}
	}
	FUNC9(sc->sc_rinfo, M_DEVBUF);
	FUNC2(sc->sc_range);
	return (ENXIO);
}