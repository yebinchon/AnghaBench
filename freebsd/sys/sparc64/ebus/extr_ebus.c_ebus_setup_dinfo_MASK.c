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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct isa_regs {scalar_t__ size; } ;
struct ebus_softc {int sc_flags; int /*<<< orphan*/  sc_ign; int /*<<< orphan*/  sc_iinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  obd_name; } ;
struct ebus_devinfo {int /*<<< orphan*/  edi_rl; TYPE_1__ edi_obdinfo; } ;
typedef  int /*<<< orphan*/  rintr ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  struct isa_regs ofw_isa_intr_t ;
typedef  int /*<<< orphan*/  intr ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUS_PCI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct isa_regs*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct isa_regs*) ; 
 scalar_t__ PCI_INVALID_IRQ ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ebus_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct ebus_devinfo*,int /*<<< orphan*/ ) ; 
 struct ebus_devinfo* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct isa_regs*,int,struct isa_regs*,int,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct isa_regs) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ebus_devinfo *
FUNC13(device_t dev, struct ebus_softc *sc, phandle_t node)
{
	struct isa_regs reg, *regs;
	ofw_isa_intr_t intr, *intrs;
	struct ebus_devinfo *edi;
	uint64_t start;
	uint32_t rintr;
	int i, nintr, nreg, rv;

	edi = FUNC7(sizeof(*edi), M_DEVBUF, M_ZERO | M_WAITOK);
	if (FUNC8(&edi->edi_obdinfo, node) != 0) {
		FUNC6(edi, M_DEVBUF);
		return (NULL);
	}
	FUNC12(&edi->edi_rl);
	nreg = FUNC2(node, "reg", sizeof(*regs), (void **)&regs);
	if (nreg == -1) {
		FUNC4(dev, "<%s>: incomplete\n",
		    edi->edi_obdinfo.obd_name);
		FUNC5(edi);
		return (NULL);
	}
	for (i = 0; i < nreg; i++) {
		start = FUNC1(regs + i);
		(void)FUNC11(&edi->edi_rl, SYS_RES_MEMORY, i,
		    start, start + regs[i].size - 1, regs[i].size);
	}
	FUNC3(regs);

	nintr = FUNC2(node, "interrupts",  sizeof(*intrs),
	    (void **)&intrs);
	if (nintr == -1)
		return (edi);
	for (i = 0; i < nintr; i++) {
		rv = 0;
		if ((sc->sc_flags & EBUS_PCI) != 0) {
			rintr = FUNC10(dev, node, &sc->sc_iinfo,
			    intrs[i]);
		} else {
			intr = intrs[i];
			rv = FUNC9(node, &sc->sc_iinfo, &reg,
			    sizeof(reg), &intr, sizeof(intr), &rintr,
			    sizeof(rintr), NULL);
#ifndef SUN4V
			if (rv != 0)
				rintr = FUNC0(sc->sc_ign, rintr);
#endif
		}
		if ((sc->sc_flags & EBUS_PCI) == 0 ? rv == 0 :
		    rintr == PCI_INVALID_IRQ) {
			FUNC4(dev,
			    "<%s>: could not map EBus interrupt %d\n",
			    edi->edi_obdinfo.obd_name, intrs[i]);
			continue;
		}
		(void)FUNC11(&edi->edi_rl, SYS_RES_IRQ, i, rintr,
		    rintr, 1);
	}
	FUNC3(intrs);
	return (edi);
}