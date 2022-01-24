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
struct vmctx {int dummy; } ;
struct TYPE_4__ {int depth; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  fbsize; } ;
struct pci_fbuf_softc {int vga_enabled; scalar_t__ vga_full; scalar_t__ fb_base; int /*<<< orphan*/  rfb_password; int /*<<< orphan*/  rfb_wait; int /*<<< orphan*/  rfb_port; int /*<<< orphan*/  rfb_host; int /*<<< orphan*/  gc_image; int /*<<< orphan*/  vgasc; TYPE_2__ memregs; int /*<<< orphan*/  fbaddr; struct pci_devinst* fsc_pi; } ;
struct pci_devinst {TYPE_1__* pi_bar; struct pci_fbuf_softc* pi_arg; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLS_DEFAULT ; 
 int /*<<< orphan*/  DEBUG_INFO ; 
 int /*<<< orphan*/  DMEMSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FB_SIZE ; 
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  PCIBAR_MEM32 ; 
 int /*<<< orphan*/  PCIC_DISPLAY ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  PCIS_DISPLAY_VGA ; 
 int /*<<< orphan*/  PCI_FBUF_MSI_MSGS ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  ROWS_DEFAULT ; 
 int /*<<< orphan*/  VM_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct pci_fbuf_softc* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pci_fbuf_softc*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct pci_fbuf_softc* fbuf_sc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_fbuf_softc*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pci_devinst*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pci_devinst*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pci_fbuf_softc*,char*) ; 
 int /*<<< orphan*/  pci_fbuf_render ; 
 int /*<<< orphan*/  FUNC12 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (struct vmctx*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct vmctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC18(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	int error, prot;
	struct pci_fbuf_softc *sc;
	
	if (fbuf_sc != NULL) {
		FUNC6(stderr, "Only one frame buffer device is allowed.\n");
		return (-1);
	}

	sc = FUNC2(1, sizeof(struct pci_fbuf_softc));

	pi->pi_arg = sc;

	/* initialize config space */
	FUNC12(pi, PCIR_DEVICE, 0x40FB);
	FUNC12(pi, PCIR_VENDOR, 0xFB5D);
	FUNC13(pi, PCIR_CLASS, PCIC_DISPLAY);
	FUNC13(pi, PCIR_SUBCLASS, PCIS_DISPLAY_VGA);

	error = FUNC10(pi, 0, PCIBAR_MEM32, DMEMSZ);
	FUNC1(error == 0);

	error = FUNC10(pi, 1, PCIBAR_MEM32, FB_SIZE);
	FUNC1(error == 0);

	error = FUNC9(pi, PCI_FBUF_MSI_MSGS);
	FUNC1(error == 0);

	sc->fbaddr = pi->pi_bar[1].addr;
	sc->memregs.fbsize = FB_SIZE;
	sc->memregs.width  = COLS_DEFAULT;
	sc->memregs.height = ROWS_DEFAULT;
	sc->memregs.depth  = 32;

	sc->vga_enabled = 1;
	sc->vga_full = 0;

	sc->fsc_pi = pi;

	error = FUNC11(sc, opts);
	if (error != 0)
		goto done;

	/* XXX until VGA rendering is enabled */
	if (sc->vga_full != 0) {
		FUNC6(stderr, "pci_fbuf: VGA rendering not enabled");
		goto done;
	}

	sc->fb_base = FUNC16(ctx, VM_FRAMEBUFFER, "framebuffer", FB_SIZE);
	if (sc->fb_base == MAP_FAILED) {
		error = -1;
		goto done;
	}
	FUNC0(DEBUG_INFO, ("fbuf frame buffer base: %p [sz %lu]\r\n",
	        sc->fb_base, FB_SIZE));

	/*
	 * Map the framebuffer into the guest address space.
	 * XXX This may fail if the BAR is different than a prior
	 * run. In this case flag the error. This will be fixed
	 * when a change_memseg api is available.
	 */
	prot = PROT_READ | PROT_WRITE;
	if (FUNC17(ctx, sc->fbaddr, VM_FRAMEBUFFER, 0, FB_SIZE, prot) != 0) {
		FUNC6(stderr, "pci_fbuf: mapseg failed - try deleting VM and restarting\n");
		error = -1;
		goto done;
	}

	FUNC5(sc->memregs.width, sc->memregs.height, sc->fb_base);
	FUNC3(pci_fbuf_render, sc);

	if (sc->vga_enabled)
		sc->vgasc = FUNC15(!sc->vga_full);
	sc->gc_image = FUNC4();

	fbuf_sc = sc;

	FUNC8((void *)sc->fb_base, 0, FB_SIZE);

	error = FUNC14(sc->rfb_host, sc->rfb_port, sc->rfb_wait, sc->rfb_password);
done:
	if (error)
		FUNC7(sc);

	return (error);
}