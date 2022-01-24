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
struct fb_info {intptr_t fb_vbase; int fb_bpp; int fb_depth; int fb_width; int fb_height; int fb_stride; int /*<<< orphan*/  fb_size; int /*<<< orphan*/  fb_pbase; int /*<<< orphan*/  fb_name; } ;
struct terasic_mtl_softc {int /*<<< orphan*/  mtl_dev; int /*<<< orphan*/  mtl_pixel_res; struct fb_info mtl_fb_info; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct terasic_mtl_softc*,struct fb_info*) ; 

int
FUNC9(struct terasic_mtl_softc *sc)
{
	struct fb_info *info;
	device_t fbd;

	info = &sc->mtl_fb_info;
	info->fb_name = FUNC1(sc->mtl_dev);
	info->fb_pbase = FUNC7(sc->mtl_pixel_res);
	info->fb_size = FUNC6(sc->mtl_pixel_res);
	info->fb_vbase = (intptr_t)FUNC5(info->fb_pbase, info->fb_size);
	if (FUNC8(sc, info) != 0) {
		FUNC3(sc->mtl_dev, "using default panel params\n");
		info->fb_bpp = info->fb_depth = 32;
		info->fb_width = 800;
		info->fb_height = 480;
		info->fb_stride = info->fb_width * (info->fb_depth / 8);
	}

	fbd = FUNC0(sc->mtl_dev, "fbd",
	    FUNC2(sc->mtl_dev));
	if (fbd == NULL) {
		FUNC3(sc->mtl_dev, "Failed to attach fbd child\n");
		return (ENXIO);
	}
	if (FUNC4(fbd) != 0) {
		FUNC3(sc->mtl_dev,
		    "Failed to attach fbd device\n");
		return (ENXIO);
	}
	return (0);
}