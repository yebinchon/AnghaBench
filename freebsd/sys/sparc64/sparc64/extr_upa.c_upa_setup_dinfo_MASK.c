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
typedef  int uint32_t ;
struct upa_softc {int /*<<< orphan*/  sc_ign; } ;
struct upa_regs {int phys; int size; } ;
struct TYPE_2__ {int /*<<< orphan*/  obd_name; } ;
struct upa_devinfo {int /*<<< orphan*/  udi_rl; TYPE_1__ udi_obdinfo; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct upa_regs*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int UPA_INO_BASE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct upa_devinfo*,int /*<<< orphan*/ ) ; 
 struct upa_devinfo* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct upa_devinfo*) ; 

__attribute__((used)) static struct upa_devinfo *
FUNC10(device_t dev, struct upa_softc *sc, phandle_t node,
    uint32_t portid)
{
	struct upa_devinfo *udi;
	struct upa_regs *reg;
	uint32_t intr;
	int i, nreg;

	udi = FUNC5(sizeof(*udi), M_DEVBUF, M_WAITOK | M_ZERO);
	if (FUNC6(&udi->udi_obdinfo, node) != 0) {
		FUNC4(udi, M_DEVBUF);
		return (NULL);
	}
	FUNC8(&udi->udi_rl);

	nreg = FUNC1(node, "reg", sizeof(*reg), (void **)&reg);
	if (nreg == -1) {
		FUNC3(dev, "<%s>: incomplete\n",
		    udi->udi_obdinfo.obd_name);
		goto fail;
	}
	for (i = 0; i < nreg; i++)
		FUNC7(&udi->udi_rl, SYS_RES_MEMORY, i, reg[i].phys,
		    reg[i].phys + reg[i].size - 1, reg[i].size);
	FUNC2(reg);

	intr = FUNC0(sc->sc_ign, (UPA_INO_BASE + portid));
	FUNC7(&udi->udi_rl, SYS_RES_IRQ, 0, intr, intr, 1);

	return (udi);

 fail:
	FUNC9(udi);
	return (NULL);
}