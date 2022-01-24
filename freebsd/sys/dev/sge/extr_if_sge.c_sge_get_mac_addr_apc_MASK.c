#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct apc_tbl   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct sge_softc {int /*<<< orphan*/  sge_flags; int /*<<< orphan*/  sge_dev; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  devclass_t ;
struct apc_tbl {scalar_t__ vid; scalar_t__ did; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIS_BRIDGE_ISA ; 
 int /*<<< orphan*/  SGE_FLAG_RGMII ; 
 int /*<<< orphan*/  SIS_VENDORID ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static int
FUNC16(struct sge_softc *sc, uint8_t *dest)
{
#if defined(__amd64__) || defined(__i386__)
	devclass_t pci;
	device_t bus, dev = NULL;
	device_t *kids;
	struct apc_tbl {
		uint16_t vid;
		uint16_t did;
	} *tp, apc_tbls[] = {
		{ SIS_VENDORID, 0x0965 },
		{ SIS_VENDORID, 0x0966 },
		{ SIS_VENDORID, 0x0968 }
	};
	uint8_t reg;
	int busnum, i, j, numkids;

	pci = FUNC1("pci");
	for (busnum = 0; busnum < FUNC3(pci); busnum++) {
		bus = FUNC2(pci, busnum);
		if (!bus)
			continue;
		if (FUNC4(bus, &kids, &numkids) != 0)
			continue;
		for (i = 0; i < numkids; i++) {
			dev = kids[i];
			if (FUNC10(dev) == PCIC_BRIDGE &&
			    FUNC12(dev) == PCIS_BRIDGE_ISA) {
				tp = apc_tbls;
				for (j = 0; j < FUNC8(apc_tbls); j++) {
					if (FUNC13(dev) == tp->vid &&
					    FUNC11(dev) == tp->did) {
						FUNC6(kids, M_TEMP);
						goto apc_found;
					}
					tp++;
				}
			}
                }
		FUNC6(kids, M_TEMP);
	}
	FUNC5(sc->sge_dev, "couldn't find PCI-ISA bridge\n");
	return (EINVAL);
apc_found:
	/* Enable port 0x78 and 0x79 to access APC registers. */
	reg = FUNC14(dev, 0x48, 1);
	FUNC15(dev, 0x48, reg & ~0x02, 1);
	FUNC0(50);
	FUNC14(dev, 0x48, 1);
	/* Read stored ethernet address. */
	for (i = 0; i < ETHER_ADDR_LEN; i++) {
		FUNC9(0x78, 0x09 + i);
		dest[i] = FUNC7(0x79);
	}
	FUNC9(0x78, 0x12);
	if ((FUNC7(0x79) & 0x80) != 0)
		sc->sge_flags |= SGE_FLAG_RGMII;
	/* Restore access to APC registers. */
	FUNC15(dev, 0x48, reg, 1);

	return (0);
#else
	return (EINVAL);
#endif
}