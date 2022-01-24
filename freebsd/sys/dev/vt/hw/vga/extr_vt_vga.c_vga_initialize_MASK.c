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
typedef  int uint8_t ;
typedef  scalar_t__ u_int ;
struct vt_device {struct vga_softc* vd_softc; } ;
struct vga_softc {int vga_wmode; int vga_curfg; int vga_curbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct vga_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vga_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vga_softc*,int /*<<< orphan*/ ,int) ; 
 int VGA_AC_COLOR_PLANE_ENABLE ; 
 int VGA_AC_COLOR_SELECT ; 
 int VGA_AC_HORIZ_PIXEL_PANNING ; 
 int VGA_AC_MC_GA ; 
 int VGA_AC_MODE_CONTROL ; 
 int VGA_AC_OVERSCAN_COLOR ; 
 int FUNC4 (int) ; 
 int VGA_AC_PAL_B ; 
 int VGA_AC_PAL_G ; 
 int VGA_AC_PAL_R ; 
 int VGA_AC_PAL_SB ; 
 int VGA_AC_PAL_SG ; 
 int VGA_AC_PAL_SR ; 
 int /*<<< orphan*/  VGA_AC_WRITE ; 
 int /*<<< orphan*/  VGA_CRTC_ADDRESS ; 
 int VGA_CRTC_CS_COO ; 
 int VGA_CRTC_CURSOR_END ; 
 int VGA_CRTC_CURSOR_LOC_HIGH ; 
 int VGA_CRTC_CURSOR_LOC_LOW ; 
 int VGA_CRTC_CURSOR_START ; 
 int /*<<< orphan*/  VGA_CRTC_DATA ; 
 int VGA_CRTC_MC_HR ; 
 int VGA_CRTC_MODE_CONTROL ; 
 int VGA_CRTC_PRESET_ROW_SCAN ; 
 int VGA_CRTC_START_ADDR_HIGH ; 
 int VGA_CRTC_START_ADDR_LOW ; 
 int VGA_CRTC_UL_UL ; 
 int VGA_CRTC_UNDERLINE_LOC ; 
 int VGA_CRTC_VERT_RETRACE_END ; 
 int VGA_CRTC_VRE_PR ; 
 int /*<<< orphan*/  VGA_GC_ADDRESS ; 
 int /*<<< orphan*/  VGA_GC_DATA ; 
 int VGA_GC_ENABLE_SET_RESET ; 
 int VGA_GC_MODE ; 
 int /*<<< orphan*/  VGA_GEN_INPUT_STAT_1 ; 
 int VGA_GEN_IS1_DE ; 
 int VGA_GEN_IS1_VR ; 
 int /*<<< orphan*/  VGA_GEN_MISC_OUTPUT_R ; 
 int /*<<< orphan*/  VGA_GEN_MISC_OUTPUT_W ; 
 int VGA_GEN_MO_IOA ; 
 int /*<<< orphan*/  VGA_SEQ_ADDRESS ; 
 int /*<<< orphan*/  VGA_SEQ_DATA ; 
 int VGA_SEQ_RESET ; 
 int VGA_SEQ_RST_NAR ; 
 int VGA_SEQ_RST_SR ; 
 scalar_t__ VT_VGA_MEMSIZE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct vt_device*) ; 

__attribute__((used)) static int
FUNC7(struct vt_device *vd, int textmode)
{
	struct vga_softc *sc = vd->vd_softc;
	uint8_t x;
	int timeout;

	/* Make sure the VGA adapter is not in monochrome emulation mode. */
	x = FUNC2(sc, VGA_GEN_MISC_OUTPUT_R);
	FUNC3(sc, VGA_GEN_MISC_OUTPUT_W, x | VGA_GEN_MO_IOA);

	/* Unprotect CRTC registers 0-7. */
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_VERT_RETRACE_END);
	x = FUNC2(sc, VGA_CRTC_DATA);
	FUNC3(sc, VGA_CRTC_DATA, x & ~VGA_CRTC_VRE_PR);

	/*
	 * Wait for the vertical retrace.
	 * NOTE: this code reads the VGA_GEN_INPUT_STAT_1 register, which has
	 * the side-effect of clearing the internal flip-flip of the attribute
	 * controller's write register. This means that because this code is
	 * here, we know for sure that the first write to the attribute
	 * controller will be a write to the address register. Removing this
	 * code therefore also removes that guarantee and appropriate measures
	 * need to be taken.
	 */
	timeout = 10000;
	do {
		FUNC0(10);
		x = FUNC2(sc, VGA_GEN_INPUT_STAT_1);
		x &= VGA_GEN_IS1_VR | VGA_GEN_IS1_DE;
	} while (x != (VGA_GEN_IS1_VR | VGA_GEN_IS1_DE) && --timeout != 0);
	if (timeout == 0) {
		FUNC5("Timeout initializing vt_vga\n");
		return (ENXIO);
	}

	/* Now, disable the sync. signals. */
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_MODE_CONTROL);
	x = FUNC2(sc, VGA_CRTC_DATA);
	FUNC3(sc, VGA_CRTC_DATA, x & ~VGA_CRTC_MC_HR);

	/* Asynchronous sequencer reset. */
	FUNC3(sc, VGA_SEQ_ADDRESS, VGA_SEQ_RESET);
	FUNC3(sc, VGA_SEQ_DATA, VGA_SEQ_RST_SR);

	if (!textmode)
		FUNC6(vd);

	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_PRESET_ROW_SCAN);
	FUNC3(sc, VGA_CRTC_DATA, 0);
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_CURSOR_START);
	FUNC3(sc, VGA_CRTC_DATA, VGA_CRTC_CS_COO);
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_CURSOR_END);
	FUNC3(sc, VGA_CRTC_DATA, 0);
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_START_ADDR_HIGH);
	FUNC3(sc, VGA_CRTC_DATA, 0);
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_START_ADDR_LOW);
	FUNC3(sc, VGA_CRTC_DATA, 0);
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_CURSOR_LOC_HIGH);
	FUNC3(sc, VGA_CRTC_DATA, 0);
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_CURSOR_LOC_LOW);
	FUNC3(sc, VGA_CRTC_DATA, 0x59);
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_UNDERLINE_LOC);
	FUNC3(sc, VGA_CRTC_DATA, VGA_CRTC_UL_UL);

	if (textmode) {
		/* Set the attribute controller to blink disable. */
		FUNC3(sc, VGA_AC_WRITE, VGA_AC_MODE_CONTROL);
		FUNC3(sc, VGA_AC_WRITE, 0);
	} else {
		/* Set the attribute controller in graphics mode. */
		FUNC3(sc, VGA_AC_WRITE, VGA_AC_MODE_CONTROL);
		FUNC3(sc, VGA_AC_WRITE, VGA_AC_MC_GA);
		FUNC3(sc, VGA_AC_WRITE, VGA_AC_HORIZ_PIXEL_PANNING);
		FUNC3(sc, VGA_AC_WRITE, 0);
	}
	FUNC3(sc, VGA_AC_WRITE, FUNC4(0));
	FUNC3(sc, VGA_AC_WRITE, 0);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(1));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_B);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(2));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_G);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(3));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_G | VGA_AC_PAL_B);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(4));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_R);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(5));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_R | VGA_AC_PAL_B);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(6));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_SG | VGA_AC_PAL_R);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(7));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_R | VGA_AC_PAL_G | VGA_AC_PAL_B);

	FUNC3(sc, VGA_AC_WRITE, FUNC4(8));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_SR | VGA_AC_PAL_SG |
	    VGA_AC_PAL_SB);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(9));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_SR | VGA_AC_PAL_SG |
	    VGA_AC_PAL_SB | VGA_AC_PAL_B);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(10));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_SR | VGA_AC_PAL_SG |
	    VGA_AC_PAL_SB | VGA_AC_PAL_G);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(11));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_SR | VGA_AC_PAL_SG |
	    VGA_AC_PAL_SB | VGA_AC_PAL_G | VGA_AC_PAL_B);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(12));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_SR | VGA_AC_PAL_SG |
	    VGA_AC_PAL_SB | VGA_AC_PAL_R);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(13));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_SR | VGA_AC_PAL_SG |
	    VGA_AC_PAL_SB | VGA_AC_PAL_R | VGA_AC_PAL_B);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(14));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_SR | VGA_AC_PAL_SG |
	    VGA_AC_PAL_SB | VGA_AC_PAL_R | VGA_AC_PAL_G);
	FUNC3(sc, VGA_AC_WRITE, FUNC4(15));
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_PAL_SR | VGA_AC_PAL_SG |
	    VGA_AC_PAL_SB | VGA_AC_PAL_R | VGA_AC_PAL_G | VGA_AC_PAL_B);

	FUNC3(sc, VGA_AC_WRITE, VGA_AC_OVERSCAN_COLOR);
	FUNC3(sc, VGA_AC_WRITE, 0);
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_COLOR_PLANE_ENABLE);
	FUNC3(sc, VGA_AC_WRITE, 0x0f);
	FUNC3(sc, VGA_AC_WRITE, VGA_AC_COLOR_SELECT);
	FUNC3(sc, VGA_AC_WRITE, 0);

	if (!textmode) {
		u_int ofs;

		/*
		 * Done.  Clear the frame buffer.  All bit planes are
		 * enabled, so a single-paged loop should clear all
		 * planes.
		 */
		for (ofs = 0; ofs < VT_VGA_MEMSIZE; ofs++) {
			FUNC1(sc, ofs, 0);
		}
	}

	/* Re-enable the sequencer. */
	FUNC3(sc, VGA_SEQ_ADDRESS, VGA_SEQ_RESET);
	FUNC3(sc, VGA_SEQ_DATA, VGA_SEQ_RST_SR | VGA_SEQ_RST_NAR);
	/* Re-enable the sync signals. */
	FUNC3(sc, VGA_CRTC_ADDRESS, VGA_CRTC_MODE_CONTROL);
	x = FUNC2(sc, VGA_CRTC_DATA);
	FUNC3(sc, VGA_CRTC_DATA, x | VGA_CRTC_MC_HR);

	if (!textmode) {
		/* Switch to write mode 3, because we'll mainly do bitblt. */
		FUNC3(sc, VGA_GC_ADDRESS, VGA_GC_MODE);
		FUNC3(sc, VGA_GC_DATA, 3);
		sc->vga_wmode = 3;

		/*
		 * In Write Mode 3, Enable Set/Reset is ignored, but we
		 * use Write Mode 0 to write a group of 8 pixels using
		 * 3 or more colors. In this case, we want to disable
		 * Set/Reset: set Enable Set/Reset to 0.
		 */
		FUNC3(sc, VGA_GC_ADDRESS, VGA_GC_ENABLE_SET_RESET);
		FUNC3(sc, VGA_GC_DATA, 0x00);

		/*
		 * Clear the colors we think are loaded into Set/Reset or
		 * the latches.
		 */
		sc->vga_curfg = sc->vga_curbg = 0xff;
	}

	return (0);
}