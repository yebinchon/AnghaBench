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
typedef  int uint32_t ;
typedef  int u_int ;
struct videomode {int htotal; int hsync_end; int hsync_start; int hdisplay; int vtotal; int vsync_end; int vsync_start; int vdisplay; int /*<<< orphan*/  dot_clock; } ;
struct lcd_frame_descriptor {int dummy; } ;
struct jzlcd_softc {int fdesc_paddr; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_pix; int /*<<< orphan*/  fdesc_map; int /*<<< orphan*/  fdesc_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCDCFG ; 
 int LCDCFG_24 ; 
 int LCDCFG_CLSM ; 
 int LCDCFG_NEWDES ; 
 int LCDCFG_PCP ; 
 int LCDCFG_PSM ; 
 int LCDCFG_RECOVER ; 
 int LCDCFG_REVM ; 
 int LCDCFG_SPLM ; 
 int /*<<< orphan*/  LCDCTRL ; 
 int LCDCTRL_BST ; 
 int LCDCTRL_BST_64 ; 
 int LCDCTRL_OFUM ; 
 int /*<<< orphan*/  LCDDA0 ; 
 int /*<<< orphan*/  LCDDA1 ; 
 int /*<<< orphan*/  LCDDAH ; 
 int LCDDAH_HDE_SHIFT ; 
 int LCDDAH_HDS_SHIFT ; 
 int /*<<< orphan*/  LCDDAV ; 
 int LCDDAV_VDE_SHIFT ; 
 int LCDDAV_VDS_SHIFT ; 
 int /*<<< orphan*/  LCDHSYNC ; 
 int /*<<< orphan*/  LCDPCFG ; 
 int /*<<< orphan*/  LCDRGBC ; 
 int LCDRGBC_RGBFMT ; 
 int /*<<< orphan*/  LCDSTATE ; 
 int /*<<< orphan*/  LCDVAT ; 
 int LCDVAT_HT_SHIFT ; 
 int LCDVAT_VT_SHIFT ; 
 int /*<<< orphan*/  LCDVSYNC ; 
 int FUNC1 (struct jzlcd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jzlcd_softc*,int /*<<< orphan*/ ,int) ; 
 int PCFG_MAGIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct jzlcd_softc*,struct videomode const*,int) ; 

__attribute__((used)) static int
FUNC7(struct jzlcd_softc *sc, const struct videomode *mode)
{
	u_int hbp, hfp, hsw, vbp, vfp, vsw;
	u_int hds, hde, ht, vds, vde, vt;
	uint32_t ctrl;
	int error;

	hbp = mode->htotal - mode->hsync_end;
	hfp = mode->hsync_start - mode->hdisplay;
	hsw = mode->hsync_end - mode->hsync_start;
	vbp = mode->vtotal - mode->vsync_end;
	vfp = mode->vsync_start - mode->vdisplay;
	vsw = mode->vsync_end - mode->vsync_start;

	hds = hsw + hbp;
	hde = hds + mode->hdisplay;
	ht = hde + hfp;

	vds = vsw + vbp;
	vde = vds + mode->vdisplay;
	vt = vde + vfp;

	/* Setup timings */
	FUNC2(sc, LCDVAT,
	    (ht << LCDVAT_HT_SHIFT) | (vt << LCDVAT_VT_SHIFT));
	FUNC2(sc, LCDDAH,
	    (hds << LCDDAH_HDS_SHIFT) | (hde << LCDDAH_HDE_SHIFT));
	FUNC2(sc, LCDDAV,
	    (vds << LCDDAV_VDS_SHIFT) | (vde << LCDDAV_VDE_SHIFT));
	FUNC2(sc, LCDHSYNC, hsw);
	FUNC2(sc, LCDVSYNC, vsw);

	/* Set configuration */
	FUNC2(sc, LCDCFG, LCDCFG_NEWDES | LCDCFG_RECOVER | LCDCFG_24 |
	    LCDCFG_PSM | LCDCFG_CLSM | LCDCFG_SPLM | LCDCFG_REVM | LCDCFG_PCP);
	ctrl = FUNC1(sc, LCDCTRL);
	ctrl &= ~LCDCTRL_BST;
	ctrl |= LCDCTRL_BST_64 | LCDCTRL_OFUM;
	FUNC2(sc, LCDCTRL, ctrl);
	FUNC2(sc, LCDPCFG, PCFG_MAGIC);
	FUNC2(sc, LCDRGBC, LCDRGBC_RGBFMT);

	/* Update registers */
	FUNC2(sc, LCDSTATE, 0);

	/* Setup frame descriptors */
	FUNC6(sc, mode, 0);
	FUNC6(sc, mode, 1);
	FUNC3(sc->fdesc_tag, sc->fdesc_map, BUS_DMASYNC_PREWRITE);

	/* Setup DMA channels */
	FUNC2(sc, LCDDA0, sc->fdesc_paddr
	    + sizeof(struct lcd_frame_descriptor));
	FUNC2(sc, LCDDA1, sc->fdesc_paddr);

	/* Set display clock */
	error = FUNC4(sc->clk_pix, FUNC0(mode->dot_clock), 0);
	if (error != 0) {
		FUNC5(sc->dev, "failed to set pixel clock to %u Hz\n",
		    FUNC0(mode->dot_clock));
		return (error);
	}

	return (0);
}