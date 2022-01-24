#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_14__ {int vi_height; int vi_width; int vi_cwidth; int vi_cheight; int /*<<< orphan*/  vi_mem_model; int /*<<< orphan*/  vi_flags; } ;
typedef  TYPE_1__ video_info_t ;
struct TYPE_15__ {int va_flags; TYPE_1__ va_info; } ;
typedef  TYPE_2__ video_adapter_t ;
typedef  int uint8_t ;
struct machfb_softc {int sc_chip_id; int sc_ramdac_freq; int sc_chip_rev; int sc_node; char sc_height; char sc_width; char sc_depth; int sc_xmargin; int sc_ymargin; int sc_memsize; int sc_memtype; int sc_ref_freq; int sc_ref_div; int sc_mclk_fb_div; int sc_mem_freq; int sc_mclk_post_div; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_cbwidth; int /*<<< orphan*/  sc_font; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_17__ {int red; int green; int blue; } ;
struct TYPE_16__ {int chip_id; int ramdac_freq; } ;
struct TYPE_13__ {int width; int height; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ATI_MACH64_CT ; 
 int ATI_MACH64_VT ; 
 int ATI_RAGE_II ; 
 int ATI_RAGE_XC_PCI ; 
 int ATI_RAGE_XC_PCI66 ; 
 int ATI_RAGE_XL_PCI ; 
 int ATI_RAGE_XL_PCI66 ; 
 scalar_t__ CLOCK_CNTL ; 
 int /*<<< orphan*/  CONFIG_CHIP_ID ; 
 int /*<<< orphan*/  CONFIG_STAT0 ; 
 scalar_t__ DAC_DATA ; 
 scalar_t__ DAC_MASK ; 
 scalar_t__ DAC_RINDEX ; 
 scalar_t__ DAC_WINDEX ; 
 int ENXIO ; 
 int MACHFB_CMAP_OFF ; 
 int /*<<< orphan*/  MACHFB_DRIVER_NAME ; 
 int /*<<< orphan*/  MACHFB_DSP ; 
 int MCLK_FB_DIV ; 
 int /*<<< orphan*/  NBBY ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,char*,int) ; 
 int PLL_REF_DIV ; 
 int V_ADP_BORDER ; 
 int V_ADP_COLOR ; 
 int V_ADP_INITIALIZED ; 
 int V_ADP_MODECHANGE ; 
 int V_ADP_PALETTE ; 
 int V_ADP_REGISTERED ; 
 int /*<<< orphan*/  V_DISPLAY_ON ; 
 int /*<<< orphan*/  V_INFO_COLOR ; 
 int /*<<< orphan*/  V_INFO_MM_OTHER ; 
 TYPE_12__ gallant12x22 ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_9__* machfb_default_cmap ; 
 int FUNC6 (struct machfb_softc*) ; 
 TYPE_5__* machfb_info ; 
 int /*<<< orphan*/  FUNC7 (struct machfb_softc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_5__*) ; 
 int FUNC10 (struct machfb_softc*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct machfb_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct machfb_softc*,scalar_t__,int) ; 
 void* FUNC13 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC16(int unit, video_adapter_t *adp, int flags)
{
	struct machfb_softc *sc;
	phandle_t options;
	video_info_t *vi;
	char buf[32];
	int i;
	uint8_t	dac_mask, dac_rindex, dac_windex;

	sc = (struct machfb_softc *)adp;
	vi = &adp->va_info;

	if ((FUNC10(sc, CONFIG_CHIP_ID) & 0xffff) != sc->sc_chip_id)
		return (ENXIO);

	sc->sc_ramdac_freq = 0;
	for (i = 0; i < FUNC9(machfb_info); i++) {
		if (sc->sc_chip_id == machfb_info[i].chip_id) {
			sc->sc_ramdac_freq = machfb_info[i].ramdac_freq;
			break;
		}
	}
	if (sc->sc_ramdac_freq == 0)
		return (ENXIO);
	if (sc->sc_chip_id == ATI_RAGE_II && sc->sc_chip_rev & 0x07)
		sc->sc_ramdac_freq = 170000;

	FUNC14(adp, MACHFB_DRIVER_NAME, -1, unit);

	if (FUNC1(sc->sc_node, "height", &sc->sc_height,
	    sizeof(sc->sc_height)) == -1)
		return (ENXIO);
	if (FUNC1(sc->sc_node, "width", &sc->sc_width,
	    sizeof(sc->sc_width)) == -1)
		return (ENXIO);
	if (FUNC1(sc->sc_node, "depth", &sc->sc_depth,
	    sizeof(sc->sc_depth)) == -1)
		return (ENXIO);
	if ((options = FUNC0("/options")) == -1)
		return (ENXIO);
	if (FUNC1(options, "screen-#rows", buf, sizeof(buf)) == -1)
		return (ENXIO);
	vi->vi_height = FUNC13(buf, NULL, 10);
	if (FUNC1(options, "screen-#columns", buf, sizeof(buf)) == -1)
		return (ENXIO);
	vi->vi_width = FUNC13(buf, NULL, 10);
	vi->vi_cwidth = gallant12x22.width;
	vi->vi_cheight = gallant12x22.height;
	vi->vi_flags = V_INFO_COLOR;
	vi->vi_mem_model = V_INFO_MM_OTHER;

	sc->sc_font = gallant12x22.data;
	sc->sc_cbwidth = FUNC2(vi->vi_cwidth, NBBY);	/* width in bytes */
	sc->sc_xmargin = (sc->sc_width - (vi->vi_width * vi->vi_cwidth)) / 2;
	sc->sc_ymargin = (sc->sc_height - (vi->vi_height * vi->vi_cheight)) / 2;

	if (sc->sc_chip_id != ATI_MACH64_CT &&
	    !((sc->sc_chip_id == ATI_MACH64_VT ||
	    sc->sc_chip_id == ATI_RAGE_II) &&
	    (sc->sc_chip_rev & 0x07) == 0))
		sc->sc_flags |= MACHFB_DSP;

	sc->sc_memsize = FUNC6(sc);
	if (sc->sc_memsize == 8192)
		/* The last page is used as register aperture. */
		sc->sc_memsize -= 4;
	sc->sc_memtype = FUNC10(sc, CONFIG_STAT0) & 0x07;

	if ((sc->sc_chip_id >= ATI_RAGE_XC_PCI66 &&
	    sc->sc_chip_id <= ATI_RAGE_XL_PCI66) ||
	    (sc->sc_chip_id >= ATI_RAGE_XL_PCI &&
	    sc->sc_chip_id <= ATI_RAGE_XC_PCI))
		sc->sc_ref_freq = 29498;
	else
		sc->sc_ref_freq = 14318;

	FUNC12(sc, CLOCK_CNTL + 1, PLL_REF_DIV << 2);
	sc->sc_ref_div = FUNC11(sc, CLOCK_CNTL + 2);
	FUNC12(sc, CLOCK_CNTL + 1, MCLK_FB_DIV << 2);
	sc->sc_mclk_fb_div = FUNC11(sc, CLOCK_CNTL + 2);
	sc->sc_mem_freq = (2 * sc->sc_ref_freq * sc->sc_mclk_fb_div) /
	    (sc->sc_ref_div * 2);
	sc->sc_mclk_post_div = (sc->sc_mclk_fb_div * 2 * sc->sc_ref_freq) /
	    (sc->sc_mem_freq * sc->sc_ref_div);

	FUNC7(sc);
#if 0
	machfb_adjust_frame(0, 0);
#endif
	FUNC8(adp, 0);

	/*
	 * Install our 16-color color map.  This is done only once and with
	 * an offset of 16 on sparc64 as there the OBP driver expects white
	 * to be at index 0 and black at 255 (some versions also use 1 - 8
	 * for color text support or the full palette for the boot banner
	 * logo but no versions seems to use the ISO 6429-1983 color map).
	 * Otherwise the colors are inverted when back in the OFW.
	 */
	dac_rindex = FUNC11(sc, DAC_RINDEX);
	dac_windex = FUNC11(sc, DAC_WINDEX);
	dac_mask = FUNC11(sc, DAC_MASK);
	FUNC12(sc, DAC_MASK, 0xff);
	FUNC12(sc, DAC_WINDEX, MACHFB_CMAP_OFF);
	for (i = 0; i < 16; i++) {
		FUNC12(sc, DAC_DATA, machfb_default_cmap[i].red);
		FUNC12(sc, DAC_DATA, machfb_default_cmap[i].green);
		FUNC12(sc, DAC_DATA, machfb_default_cmap[i].blue);
	}
	FUNC12(sc, DAC_MASK, dac_mask);
	FUNC12(sc, DAC_RINDEX, dac_rindex);
	FUNC12(sc, DAC_WINDEX, dac_windex);

	FUNC4(adp, V_DISPLAY_ON);
	FUNC5(adp);

	/*
	 * Setting V_ADP_MODECHANGE serves as hack so machfb_set_mode()
	 * (which will invalidate our caches) is called as a precaution
	 * when the X server shuts down.
	 */
	adp->va_flags |= V_ADP_COLOR | V_ADP_MODECHANGE | V_ADP_PALETTE |
	    V_ADP_BORDER | V_ADP_INITIALIZED;
	if (FUNC15(adp) < 0)
		return (ENXIO);
	adp->va_flags |= V_ADP_REGISTERED;

	return (0);
}