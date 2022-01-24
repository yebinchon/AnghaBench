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
struct vga_softc {int gc_height; int gc_width; TYPE_1__* gc_image; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vga_softc*,int,int) ; 

__attribute__((used)) static void
FUNC1(struct vga_softc *sc)
{
	int x, y;

	for (y = 0; y < sc->gc_height; y++) {
		for (x = 0; x < sc->gc_width; x++) {
			int offset;

			offset = y * sc->gc_width + x;
			sc->gc_image->data[offset] = FUNC0(sc, x, y);
		}
	}
}