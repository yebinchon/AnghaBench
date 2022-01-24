#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
struct TYPE_4__ {int vi_width; int vi_cheight; int vi_cwidth; } ;
struct TYPE_5__ {TYPE_1__ va_info; } ;
typedef  TYPE_2__ video_adapter_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_int8_t ;
struct creator_softc {int sc_ymargin; int sc_xmargin; scalar_t__ sc_font; } ;

/* Variables and functions */
 int /*<<< orphan*/  FFB_FBC ; 
 int /*<<< orphan*/  FFB_FBC_FONT ; 
 int /*<<< orphan*/  FFB_FBC_FONTXY ; 
 int /*<<< orphan*/  FUNC0 (struct creator_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * creator_cmap ; 
 int /*<<< orphan*/  FUNC1 (struct creator_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct creator_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct creator_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct creator_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct creator_softc*,int) ; 

__attribute__((used)) static int
FUNC6(video_adapter_t *adp, vm_offset_t off, u_int8_t c, u_int8_t a)
{
	struct creator_softc *sc;
	const uint16_t *p;
	int row;
	int col;
	int i;

	sc = (struct creator_softc *)adp;
	row = (off / adp->va_info.vi_width) * adp->va_info.vi_cheight;
	col = (off % adp->va_info.vi_width) * adp->va_info.vi_cwidth;
	p = (const uint16_t *)sc->sc_font + (c * adp->va_info.vi_cheight);
	FUNC3(sc, creator_cmap[a & 0xf]);
	FUNC2(sc, creator_cmap[(a >> 4) & 0xf]);
	FUNC1(sc, 1 + adp->va_info.vi_cheight);
	FUNC0(sc, FFB_FBC, FFB_FBC_FONTXY,
	    ((row + sc->sc_ymargin) << 16) | (col + sc->sc_xmargin));
	FUNC5(sc, adp->va_info.vi_cwidth);
	FUNC4(sc, 0x10000);
	for (i = 0; i < adp->va_info.vi_cheight; i++) {
		FUNC0(sc, FFB_FBC, FFB_FBC_FONT, *p++ << 16);
	}
	return (0);
}