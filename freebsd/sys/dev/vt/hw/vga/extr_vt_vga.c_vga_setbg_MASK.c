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
typedef  size_t term_color_t ;
struct vt_device {struct vga_softc* vd_softc; } ;
struct vga_softc {size_t vga_curbg; int vga_curfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vga_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vga_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vga_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGA_GC_ADDRESS ; 
 int /*<<< orphan*/  VGA_GC_DATA ; 
 int /*<<< orphan*/  VGA_GC_SET_RESET ; 
 int /*<<< orphan*/  VT_VGA_BGCOLOR_OFFSET ; 
 int /*<<< orphan*/ * cons_to_vga_colors ; 
 int /*<<< orphan*/  FUNC3 (struct vt_device*,int) ; 

__attribute__((used)) static inline void
FUNC4(struct vt_device *vd, term_color_t color)
{
	struct vga_softc *sc = vd->vd_softc;

	FUNC3(vd, 3);

	if (sc->vga_curbg == color)
		return;

	FUNC2(sc, VGA_GC_ADDRESS, VGA_GC_SET_RESET);
	FUNC2(sc, VGA_GC_DATA, cons_to_vga_colors[color]);

	/*
	 * Write 8 pixels using the background color to an off-screen
	 * byte in the video memory.
	 */
	FUNC1(sc, VT_VGA_BGCOLOR_OFFSET, 0xff);

	/*
	 * Read those 8 pixels back to load the background color in the
	 * latches register.
	 */
	FUNC0(sc, VT_VGA_BGCOLOR_OFFSET);

	sc->vga_curbg = color;

	/*
         * The Set/Reset register doesn't contain the fg color anymore,
         * store an invalid color.
	 */
	sc->vga_curfg = 0xff;
}