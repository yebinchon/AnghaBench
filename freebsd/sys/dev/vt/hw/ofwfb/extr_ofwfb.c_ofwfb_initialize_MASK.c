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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct vt_device {struct ofwfb_softc* vd_softc; } ;
struct TYPE_2__ {int fb_cmsize; int fb_flags; int fb_bpp; int* fb_cmap; scalar_t__ fb_vbase; } ;
struct ofwfb_softc {int iso_palette; TYPE_1__ fb; int /*<<< orphan*/  sc_memt; int /*<<< orphan*/  sc_handle; } ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_FORMAT_RGB ; 
 int FB_FLAG_NOWRITE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct vt_device *vd)
{
	struct ofwfb_softc *sc = vd->vd_softc;
	int i, err;
	cell_t retval;
	uint32_t oldpix;

	sc->fb.fb_cmsize = 16;

	if (sc->fb.fb_flags & FB_FLAG_NOWRITE)
		return;

	/*
	 * Set up the color map
	 */

	sc->iso_palette = 0;
	switch (sc->fb.fb_bpp) {
	case 8:
		FUNC4(sc->fb.fb_cmap, COLOR_FORMAT_RGB, 255,
		    16, 255, 8, 255, 0);

		for (i = 0; i < 16; i++) {
			err = FUNC0("color!", sc->sc_handle, 4, 1,
			    (cell_t)((sc->fb.fb_cmap[i] >> 16) & 0xff),
			    (cell_t)((sc->fb.fb_cmap[i] >> 8) & 0xff),
			    (cell_t)((sc->fb.fb_cmap[i] >> 0) & 0xff),
			    (cell_t)i, &retval);
			if (err)
				break;
		}
		if (i != 16)
			sc->iso_palette = 1;

		break;

	case 32:
		/*
		 * We bypass the usual bus_space_() accessors here, mostly
		 * for performance reasons. In particular, we don't want
		 * any barrier operations that may be performed and handle
		 * endianness slightly different. Figure out the host-view
		 * endianness of the frame buffer.
		 */
		oldpix = FUNC1(sc->sc_memt, sc->fb.fb_vbase, 0);
		FUNC2(sc->sc_memt, sc->fb.fb_vbase, 0, 0xff000000);
		if (*(uint8_t *)(sc->fb.fb_vbase) == 0xff)
			FUNC4(sc->fb.fb_cmap,
			    COLOR_FORMAT_RGB, 255, 0, 255, 8, 255, 16);
		else
			FUNC4(sc->fb.fb_cmap,
			    COLOR_FORMAT_RGB, 255, 16, 255, 8, 255, 0);
		FUNC2(sc->sc_memt, sc->fb.fb_vbase, 0, oldpix);
		break;

	default:
		FUNC3("Unknown color space depth %d", sc->fb.fb_bpp);
		break;
        }
}