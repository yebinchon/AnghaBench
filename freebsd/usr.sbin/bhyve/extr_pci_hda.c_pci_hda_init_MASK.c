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
struct vmctx {int dummy; } ;
struct pci_devinst {struct hda_softc* pi_arg; } ;
struct hda_softc {struct pci_devinst* pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_INTEL_82801G ; 
 int /*<<< orphan*/  HDA_LAST_OFFSET ; 
 int /*<<< orphan*/  INTEL_VENDORID ; 
 int /*<<< orphan*/  PCIBAR_MEM32 ; 
 int PCIC_MULTIMEDIA ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_HDCTL ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int PCIS_MULTIMEDIA_HDA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hda_softc* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	struct hda_softc *sc = NULL;

	FUNC0(ctx != NULL);
	FUNC0(pi != NULL);

	FUNC4(pi, PCIR_VENDOR, INTEL_VENDORID);
	FUNC4(pi, PCIR_DEVICE, HDA_INTEL_82801G);

	FUNC5(pi, PCIR_SUBCLASS, PCIS_MULTIMEDIA_HDA);
	FUNC5(pi, PCIR_CLASS, PCIC_MULTIMEDIA);

	/* select the Intel HDA mode */
	FUNC5(pi, PCIR_HDCTL, 0x01);

	/* allocate one BAR register for the Memory address offsets */
	FUNC2(pi, 0, PCIBAR_MEM32, HDA_LAST_OFFSET);

	/* allocate an IRQ pin for our slot */
	FUNC3(pi);

	sc = FUNC1(opts);
	if (!sc)
		return (-1);

	sc->pci_dev = pi;
	pi->pi_arg = sc;

	return (0);
}