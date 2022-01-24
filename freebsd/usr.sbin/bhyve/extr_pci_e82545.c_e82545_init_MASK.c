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
struct vmctx {int dummy; } ;
struct pci_devinst {int pi_slot; int pi_func; struct e82545_softc* pi_arg; } ;
struct TYPE_2__ {int /*<<< orphan*/  octet; } ;
struct e82545_softc {int /*<<< orphan*/ * esc_be; TYPE_1__ esc_mac; int /*<<< orphan*/  esc_tx_tid; int /*<<< orphan*/  esc_tx_cond; int /*<<< orphan*/  esc_rx_cond; int /*<<< orphan*/  esc_mtx; struct vmctx* esc_ctx; struct pci_devinst* esc_pi; } ;
typedef  int /*<<< orphan*/  nstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  E82545_BAR_FLASH ; 
 int /*<<< orphan*/  E82545_BAR_FLASH_LEN ; 
 int /*<<< orphan*/  E82545_BAR_IO ; 
 int /*<<< orphan*/  E82545_BAR_IO_LEN ; 
 int /*<<< orphan*/  E82545_BAR_REGISTER ; 
 int /*<<< orphan*/  E82545_BAR_REGISTER_LEN ; 
 int /*<<< orphan*/  E82545_DEV_ID_82545EM_COPPER ; 
 int /*<<< orphan*/  E82545_SUBDEV_ID ; 
 int /*<<< orphan*/  E82545_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  PCIBAR_IO ; 
 int /*<<< orphan*/  PCIBAR_MEM32 ; 
 int PCIC_NETWORK ; 
 int PCIM_HDRTYPE_NORMAL ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_HDRTYPE ; 
 int /*<<< orphan*/  PCIR_INTPIN ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_SUBDEV_0 ; 
 int /*<<< orphan*/  PCIR_SUBVEND_0 ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int PCIS_NETWORK_ETHERNET ; 
 struct e82545_softc* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e82545_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e82545_rx_callback ; 
 int /*<<< orphan*/  e82545_tx_thread ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,struct e82545_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct e82545_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int,int) ; 
 char* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char**,char*) ; 

__attribute__((used)) static int
FUNC19(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	char nstr[80];
	struct e82545_softc *sc;
	char *devname;
	char *vtopts;
	int mac_provided;

	FUNC0("Loading with options: %s\r\n", opts);

	/* Setup our softc */
	sc = FUNC1(1, sizeof(*sc));

	pi->pi_arg = sc;
	sc->esc_pi = pi;
	sc->esc_ctx = ctx;

	FUNC14(&sc->esc_mtx, NULL);
	FUNC12(&sc->esc_rx_cond, NULL);
	FUNC12(&sc->esc_tx_cond, NULL);
	FUNC13(&sc->esc_tx_tid, NULL, e82545_tx_thread, sc);
	FUNC16(nstr, sizeof(nstr), "e82545-%d:%d tx", pi->pi_slot,
	    pi->pi_func);
        FUNC15(sc->esc_tx_tid, nstr);

	FUNC10(pi, PCIR_DEVICE, E82545_DEV_ID_82545EM_COPPER);
	FUNC10(pi, PCIR_VENDOR, E82545_VENDOR_ID_INTEL);
	FUNC11(pi,  PCIR_CLASS, PCIC_NETWORK);
	FUNC11(pi, PCIR_SUBCLASS, PCIS_NETWORK_ETHERNET);
	FUNC10(pi, PCIR_SUBDEV_0, E82545_SUBDEV_ID);
	FUNC10(pi, PCIR_SUBVEND_0, E82545_VENDOR_ID_INTEL);

	FUNC11(pi,  PCIR_HDRTYPE, PCIM_HDRTYPE_NORMAL);
	FUNC11(pi,  PCIR_INTPIN, 0x1);
	
	/* TODO: this card also supports msi, but the freebsd driver for it
	 * does not, so I have not implemented it. */
	FUNC9(pi);

	FUNC8(pi, E82545_BAR_REGISTER, PCIBAR_MEM32,
		E82545_BAR_REGISTER_LEN);
	FUNC8(pi, E82545_BAR_FLASH, PCIBAR_MEM32,
		E82545_BAR_FLASH_LEN);
	FUNC8(pi, E82545_BAR_IO, PCIBAR_IO,
		E82545_BAR_IO_LEN);

	/*
	 * Attempt to open the net backend and read the MAC address
	 * if specified.  Copied from virtio-net, slightly modified.
	 */
	mac_provided = 0;
	sc->esc_be = NULL;
	if (opts != NULL) {
		int err;

		devname = vtopts = FUNC17(opts);
		(void) FUNC18(&vtopts, ",");

		if (vtopts != NULL) {
			err = FUNC5(vtopts, sc->esc_mac.octet);
			if (err != 0) {
				FUNC3(devname);
				return (err);
			}
			mac_provided = 1;
		}

		err = FUNC6(&sc->esc_be, devname, e82545_rx_callback, sc);
		FUNC3(devname);
		if (err)
			return (err);
	}

	if (!mac_provided) {
		FUNC4(pi, sc->esc_mac.octet);
	}

	FUNC7(sc->esc_be);

	/* H/w initiated reset */
	FUNC2(sc, 0);

	return (0);
}