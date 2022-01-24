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
struct videomode {int hdisplay; int vdisplay; int hsync_start; int htotal; int hsync_end; int vsync_start; int vtotal; int vsync_end; int /*<<< orphan*/  dot_clock; } ;
struct edid_info {struct videomode* edid_preferred_mode; } ;
struct TYPE_4__ {int fb_width; int fb_height; int fb_stride; int fb_bpp; int fb_depth; int fb_size; intptr_t fb_vbase; intptr_t fb_pbase; int /*<<< orphan*/  fb_name; int /*<<< orphan*/  fb_memattr; int /*<<< orphan*/  fb_flags; } ;
struct TYPE_3__ {int panel_width; int panel_height; int panel_hbp; int panel_hfp; int panel_hpw; int panel_vbp; int panel_vfp; int panel_vpw; int /*<<< orphan*/  panel_freq; } ;
struct diu_softc {int* sc_gamma; int /*<<< orphan*/ * sc_fbd; TYPE_2__ sc_info; void* sc_cursor; TYPE_1__ sc_panel; int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FB_FLAG_MEMATTR ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct diu_softc*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct diu_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct diu_softc*) ; 
 int /*<<< orphan*/  diu_intr ; 
 int /*<<< orphan*/  diu_spec ; 
 scalar_t__ FUNC13 (void*,struct edid_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct videomode* FUNC15 (int,int,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 int FUNC17 (char const*,char*,int*,int*,int*) ; 
 scalar_t__ FUNC18 (intptr_t) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct edid_info edid;
	struct diu_softc *sc;
	const struct videomode *videomode;
	void *edid_cells;
	const char *vm_name;
	phandle_t node;
	int h, r, w;
	int err, i;

	sc = FUNC8(dev);
	sc->sc_dev = dev;

	if (FUNC2(dev, diu_spec, sc->res)) {
		FUNC10(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	node = FUNC14(dev);
	/* Setup interrupt handler */
	err = FUNC3(dev, sc->res[1], INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, diu_intr, sc, &sc->ih);
	if (err) {
		FUNC10(dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	/* TODO: Eventually, allow EDID to be dynamically provided. */
	if (FUNC0(node, "edid", &edid_cells) <= 0) {
		/* Get a resource hint: hint.fb.N.mode */
		if (FUNC16(FUNC6(dev),
		    FUNC9(dev), "mode", &vm_name) != 0) {
			FUNC10(dev,
			    "No EDID data and no video-mode env set\n");
			return (ENXIO);
		}
	}
	if (edid_cells != NULL) {
		if (FUNC13(edid_cells, &edid) != 0) {
			FUNC10(dev, "Error parsing EDID\n");
			FUNC1(edid_cells);
			return (ENXIO);
		}
		videomode = edid.edid_preferred_mode;
	} else {
		/* Parse video-mode kenv variable. */
		if ((err = FUNC17(vm_name, "%dx%d@%d", &w, &h, &r)) != 3) {
			FUNC10(dev,
			    "Cannot parse video mode: %s\n", vm_name);
			return (ENXIO);
		}
		videomode = FUNC15(w, h, r);
		if (videomode == NULL) {
			FUNC10(dev,
			    "Cannot find mode for %dx%d@%d", w, h, r);
			return (ENXIO);
		}
	}

	sc->sc_panel.panel_width = videomode->hdisplay;
	sc->sc_panel.panel_height = videomode->vdisplay;
	sc->sc_panel.panel_hbp = videomode->hsync_start - videomode->hdisplay;
	sc->sc_panel.panel_hfp = videomode->htotal - videomode->hsync_end;
	sc->sc_panel.panel_hpw = videomode->hsync_end - videomode->hsync_start;
	sc->sc_panel.panel_vbp = videomode->vsync_start - videomode->vdisplay;
	sc->sc_panel.panel_vfp = videomode->vtotal - videomode->vsync_end;
	sc->sc_panel.panel_vpw = videomode->vsync_end - videomode->vsync_start;
	sc->sc_panel.panel_freq = videomode->dot_clock;

	sc->sc_info.fb_width = sc->sc_panel.panel_width;
	sc->sc_info.fb_height = sc->sc_panel.panel_height;
	sc->sc_info.fb_stride = sc->sc_info.fb_width * 4;
	sc->sc_info.fb_bpp = sc->sc_info.fb_depth = 32;
	sc->sc_info.fb_size = sc->sc_info.fb_height * sc->sc_info.fb_stride;
	sc->sc_info.fb_vbase = (intptr_t)FUNC4(sc->sc_info.fb_size,
	    M_DEVBUF, M_ZERO, 0, BUS_SPACE_MAXADDR_32BIT, PAGE_SIZE, 0);
	sc->sc_info.fb_pbase = (intptr_t)FUNC18(sc->sc_info.fb_vbase);
	sc->sc_info.fb_flags = FB_FLAG_MEMATTR;
	sc->sc_info.fb_memattr = VM_MEMATTR_DEFAULT;
	
	/* Gamma table is 3 consecutive segments of 256 bytes. */
	sc->sc_gamma = FUNC4(3 * 256, M_DEVBUF, 0, 0,
	    BUS_SPACE_MAXADDR_32BIT, PAGE_SIZE, 0);
	/* Initialize gamma to default */
	for (i = 0; i < 3 * 256; i++)
		sc->sc_gamma[i] = (i % 256);

	/* Cursor format is 32x32x16bpp */
	sc->sc_cursor = FUNC4(32 * 32 * 2, M_DEVBUF, M_ZERO, 0,
	    BUS_SPACE_MAXADDR_32BIT, PAGE_SIZE, 0);

	FUNC12(sc);

	sc->sc_info.fb_name = FUNC7(dev);

	/* Ask newbus to attach framebuffer device to me. */
	sc->sc_fbd = FUNC5(dev, "fbd", FUNC9(dev));
	if (sc->sc_fbd == NULL)
		FUNC10(dev, "Can't attach fbd device\n");

	if ((err = FUNC11(sc->sc_fbd)) != 0) {
		FUNC10(dev, "Failed to attach fbd device: %d\n", err);
	}

	return (0);
}