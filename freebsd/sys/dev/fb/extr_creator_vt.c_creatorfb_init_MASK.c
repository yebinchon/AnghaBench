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
typedef  int /*<<< orphan*/  width ;
typedef  char uint32_t ;
typedef  int /*<<< orphan*/  type ;
struct vt_device {struct creatorfb_softc* vd_softc; } ;
struct TYPE_2__ {char fb_height; char fb_width; int fb_bpp; int fb_depth; int fb_stride; int fb_size; int fb_cmsize; int /*<<< orphan*/  fb_cmap; int /*<<< orphan*/  fb_pbase; } ;
struct creatorfb_softc {TYPE_1__ fb; int /*<<< orphan*/ * memt; int /*<<< orphan*/  memh; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  char ihandle_t ;
typedef  int /*<<< orphan*/  height ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int CN_DEAD ; 
 int CN_INTERNAL ; 
 int /*<<< orphan*/  COLOR_FORMAT_RGB ; 
 int /*<<< orphan*/  FFB_DFB24 ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,int) ; 
 int FUNC3 (int,char*) ; 
 int FUNC4 (char) ; 
 char FUNC5 (char*) ; 
 struct creatorfb_softc creatorfb_conssoftc ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vt_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int
FUNC10(struct vt_device *vd)
{
	struct creatorfb_softc *sc;
	phandle_t chosen;
	phandle_t node;
	ihandle_t handle;
	uint32_t height, width;
	char type[64], name[64];
	bus_addr_t phys;
	int space;

	/* Initialize softc */
	vd->vd_softc = sc = &creatorfb_conssoftc;

	chosen = FUNC1("/chosen");
	FUNC2(chosen, "stdout", &handle, sizeof(ihandle_t));
	node = FUNC4(handle);
	if (node == -1) {
		/*
		 * The "/chosen/stdout" does not exist try
		 * using "screen" directly.
		 */
		node = FUNC1("screen");
		handle = FUNC5("screen");
	}
	FUNC2(node, "device_type", type, sizeof(type));
	if (FUNC7(type, "display") != 0)
		return (CN_DEAD);

	FUNC2(node, "name", name, sizeof(name));
	if (FUNC7(name, "SUNW,ffb") != 0 && FUNC7(name, "SUNW,afb") != 0)
		return (CN_DEAD);

	/* Make sure we have needed properties */
	if (FUNC3(node, "height") != sizeof(height) ||
	    FUNC3(node, "width") != sizeof(width))
		return (CN_DEAD);

	FUNC2(node, "height", &height, sizeof(height));
	FUNC2(node, "width", &width, sizeof(width));

	sc->fb.fb_height = height;
	sc->fb.fb_width = width;
	sc->fb.fb_bpp = sc->fb.fb_depth = 32;
	sc->fb.fb_stride = 8192; /* Fixed */
	sc->fb.fb_size = sc->fb.fb_height * sc->fb.fb_stride;

	/* Map linear framebuffer */
	if (FUNC0(node, FFB_DFB24, &space, &phys) != 0)
		return (CN_DEAD);
	sc->fb.fb_pbase = phys;
	sc->memh = FUNC6(space, phys, &sc->memt[0]);

	/* 32-bit VGA palette */
	FUNC9(sc->fb.fb_cmap, COLOR_FORMAT_RGB,
	    255, 0, 255, 8, 255, 16);
	sc->fb.fb_cmsize = 16;

	FUNC8(vd);

	return (CN_INTERNAL);
}