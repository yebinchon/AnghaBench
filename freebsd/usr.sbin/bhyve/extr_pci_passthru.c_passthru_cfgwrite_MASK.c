#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct vmctx {int dummy; } ;
struct TYPE_10__ {int table_count; TYPE_3__* table; scalar_t__ enabled; } ;
struct TYPE_7__ {int /*<<< orphan*/  maxmsgnum; int /*<<< orphan*/  msg_data; int /*<<< orphan*/  addr; } ;
struct pci_devinst {TYPE_4__ pi_msix; TYPE_1__ pi_msi; struct passthru_softc* pi_arg; } ;
struct TYPE_12__ {int /*<<< orphan*/  pc_func; int /*<<< orphan*/  pc_dev; int /*<<< orphan*/  pc_bus; } ;
struct TYPE_11__ {scalar_t__ emulated; int /*<<< orphan*/  capoff; } ;
struct TYPE_8__ {int /*<<< orphan*/  capoff; } ;
struct passthru_softc {TYPE_6__ psc_sel; TYPE_5__ psc_msi; TYPE_2__ psc_msix; } ;
struct TYPE_9__ {int /*<<< orphan*/  vector_control; int /*<<< orphan*/  msg_data; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIM_CMD_INTxDIS ; 
 int PCIR_COMMAND ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (struct passthru_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_devinst*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct passthru_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_devinst*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_devinst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_devinst*,int) ; 
 scalar_t__ FUNC8 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_devinst*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_devinst*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vmctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct vmctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
		  int coff, int bytes, uint32_t val)
{
	int error, msix_table_entries, i;
	struct passthru_softc *sc;
	uint16_t cmd_old;

	sc = pi->pi_arg;

	/*
	 * PCI BARs are emulated
	 */
	if (FUNC0(coff))
		return (-1);

	/*
	 * MSI capability is emulated
	 */
	if (FUNC2(sc, coff)) {
		FUNC3(pi, sc->psc_msi.capoff, coff, bytes, val);

		error = FUNC11(ctx, vcpu, sc->psc_sel.pc_bus,
			sc->psc_sel.pc_dev, sc->psc_sel.pc_func,
			pi->pi_msi.addr, pi->pi_msi.msg_data,
			pi->pi_msi.maxmsgnum);
		if (error != 0)
			FUNC1(1, "vm_setup_pptdev_msi");
		return (0);
	}

	if (FUNC4(sc, coff)) {
		FUNC5(pi, sc->psc_msix.capoff, coff, bytes, val);
		if (pi->pi_msix.enabled) {
			msix_table_entries = pi->pi_msix.table_count;
			for (i = 0; i < msix_table_entries; i++) {
				error = FUNC12(ctx, vcpu,
				    sc->psc_sel.pc_bus, sc->psc_sel.pc_dev, 
				    sc->psc_sel.pc_func, i, 
				    pi->pi_msix.table[i].addr,
				    pi->pi_msix.table[i].msg_data,
				    pi->pi_msix.table[i].vector_control);
		
				if (error)
					FUNC1(1, "vm_setup_pptdev_msix");
			}
		}
		return (0);
	}

#ifdef LEGACY_SUPPORT
	/*
	 * If this device does not support MSI natively then we cannot let
	 * the guest disable legacy interrupts from the device. It is the
	 * legacy interrupt that is triggering the virtual MSI to the guest.
	 */
	if (sc->psc_msi.emulated && pci_msi_enabled(pi)) {
		if (coff == PCIR_COMMAND && bytes == 2)
			val &= ~PCIM_CMD_INTxDIS;
	}
#endif

	FUNC13(&sc->psc_sel, coff, bytes, val);
	if (coff == PCIR_COMMAND) {
		cmd_old = FUNC7(pi, PCIR_COMMAND);
		if (bytes == 1)
			FUNC10(pi, PCIR_COMMAND, val);
		else if (bytes == 2)
			FUNC9(pi, PCIR_COMMAND, val);
		FUNC6(pi, cmd_old);
	}

	return (0);
}