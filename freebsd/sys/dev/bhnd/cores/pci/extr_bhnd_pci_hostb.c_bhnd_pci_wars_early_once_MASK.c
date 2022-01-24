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
typedef  int uint32_t ;
struct TYPE_4__ {int inv; } ;
struct TYPE_3__ {int aspm_en; } ;
struct bhnd_pcihb_softc {int quirks; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  dev; TYPE_2__ sdr9_quirk_polarity; TYPE_1__ aspm_quirk_override; } ;
struct bhnd_board_info {int board_flags2; } ;

/* Variables and functions */
 int BHND_BFL2_PCIEWAR_OVR ; 
 scalar_t__ BHND_DEVCLASS_PCIE ; 
 int BHND_PCIE_PLP_POLARITY_INV ; 
 int /*<<< orphan*/  BHND_PCIE_PLP_STATUSREG ; 
 int BHND_PCIE_QUIRK_ASPM_OVR ; 
 int BHND_PCIE_QUIRK_BFL2_PCIEWAR_EN ; 
 int BHND_PCIE_QUIRK_DEFAULT_MRRS_512 ; 
 int BHND_PCIE_QUIRK_SDR9_POLARITY ; 
 int FUNC0 (struct bhnd_pcihb_softc*,int /*<<< orphan*/ ) ; 
 int BHND_PCI_QUIRK_960NS_LATTIM_OVR ; 
 int /*<<< orphan*/  PCIR_LATTIMER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct bhnd_board_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC6(struct bhnd_pcihb_softc *sc)
{
	int error;

	/* Set PCI latency timer */
	if (sc->quirks & BHND_PCI_QUIRK_960NS_LATTIM_OVR) {
		FUNC5(sc->pci_dev, PCIR_LATTIMER, 0x20 /* 960ns */,
		    1); 
	}

	/* Determine whether ASPM/CLKREQ should be forced on, or forced off. */
	if (sc->quirks & BHND_PCIE_QUIRK_ASPM_OVR) {
		struct bhnd_board_info	board;
		bool			aspm_en;

		/* Fetch board info */
		if ((error = FUNC2(sc->dev, &board)))
			return (error);
		
		/* Check board flags */
		aspm_en = true;
		if (board.board_flags2 & BHND_BFL2_PCIEWAR_OVR)
			aspm_en = false;

		/* Early Apple devices did not (but should have) set
		 * BHND_BFL2_PCIEWAR_OVR in SPROM. */
		if (sc->quirks & BHND_PCIE_QUIRK_BFL2_PCIEWAR_EN)
			aspm_en = false;

		sc->aspm_quirk_override.aspm_en = aspm_en;
	}

	/* Determine correct polarity by observing the attach-time PCIe PHY
	 * link status. This is used later to reset/force the SerDes
	 * polarity */
	if (sc->quirks & BHND_PCIE_QUIRK_SDR9_POLARITY) {
		uint32_t st;
		bool inv;

		st = FUNC0(sc, BHND_PCIE_PLP_STATUSREG);
		inv = ((st & BHND_PCIE_PLP_POLARITY_INV) != 0);
		sc->sdr9_quirk_polarity.inv = inv;
	}

	/* Override maximum read request size */
	if (FUNC1(sc->dev) == BHND_DEVCLASS_PCIE) {
		int	msize;

		msize = 128; /* compatible with all PCIe-G1 core revisions */
		if (sc->quirks & BHND_PCIE_QUIRK_DEFAULT_MRRS_512)
			msize = 512;

		if (FUNC4(sc->pci_dev, msize) == 0)
			FUNC3("set mrrs on non-PCIe device");
	}

	return (0);
}