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
struct TYPE_4__ {int vi_cheight; int const vi_cwidth; int vi_width; } ;
struct TYPE_5__ {TYPE_1__ va_info; } ;
typedef  TYPE_2__ video_adapter_t ;
typedef  int uint8_t ;
struct machfb_softc {scalar_t__ sc_draw_cache; int sc_cbwidth; int sc_xmargin; int sc_ymargin; int* sc_font; } ;

/* Variables and functions */
 int const BKGD_SRC_BKGD_CLR ; 
 scalar_t__ CLR_CMP_CNTL ; 
 scalar_t__ DP_MIX ; 
 scalar_t__ DP_PIX_WIDTH ; 
 scalar_t__ DP_SRC ; 
 scalar_t__ DP_WRITE_MASK ; 
 int const DST_8BPP ; 
 scalar_t__ DST_CNTL ; 
 scalar_t__ DST_HEIGHT_WIDTH ; 
 int const DST_X_LEFT_TO_RIGHT ; 
 int const DST_Y_TOP_TO_BOTTOM ; 
 scalar_t__ DST_Y_X ; 
 int const FRGD_SRC_FRGD_CLR ; 
 int const HOST_1BPP ; 
 int const HOST_BYTE_ALIGN ; 
 scalar_t__ HOST_CNTL ; 
 scalar_t__ HOST_DATA0 ; 
 scalar_t__ MACHFB_DRAW_CHAR ; 
 int MIX_SRC ; 
 int const MONO_SRC_HOST ; 
 int const SRC_1BPP ; 
 scalar_t__ SRC_CNTL ; 
 int const SRC_LINE_X_LEFT_TO_RIGHT ; 
 scalar_t__ SRC_WIDTH1 ; 
 scalar_t__ SRC_Y_X ; 
 int /*<<< orphan*/  FUNC0 (struct machfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct machfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct machfb_softc*,scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct machfb_softc*,int) ; 

__attribute__((used)) static int
FUNC4(video_adapter_t *adp, vm_offset_t off, uint8_t c, uint8_t a)
{
	struct machfb_softc *sc;
	const uint8_t *p;
	int i;

	sc = (struct machfb_softc *)adp;

	if (sc->sc_draw_cache != MACHFB_DRAW_CHAR) {
		FUNC3(sc, 8);
		FUNC2(sc, DP_WRITE_MASK, 0xff);	/* XXX only good for 8 bit */
		FUNC2(sc, DP_PIX_WIDTH, DST_8BPP | SRC_1BPP | HOST_1BPP);
		FUNC2(sc, DP_SRC, MONO_SRC_HOST | BKGD_SRC_BKGD_CLR |
		    FRGD_SRC_FRGD_CLR);
		FUNC2(sc, DP_MIX ,((MIX_SRC & 0xffff) << 16) | MIX_SRC);
		FUNC2(sc, CLR_CMP_CNTL, 0);	/* no transparency */
		FUNC2(sc, SRC_CNTL, SRC_LINE_X_LEFT_TO_RIGHT);
		FUNC2(sc, DST_CNTL, DST_Y_TOP_TO_BOTTOM | DST_X_LEFT_TO_RIGHT);
		FUNC2(sc, HOST_CNTL, HOST_BYTE_ALIGN);
		sc->sc_draw_cache = MACHFB_DRAW_CHAR;
	}
	FUNC0(sc, (a >> 4) & 0xf);
	FUNC1(sc, a & 0xf);
	FUNC3(sc, 4 + (adp->va_info.vi_cheight / sc->sc_cbwidth));
	FUNC2(sc, SRC_Y_X, 0);
	FUNC2(sc, SRC_WIDTH1, adp->va_info.vi_cwidth);
	FUNC2(sc, DST_Y_X, ((((off % adp->va_info.vi_width) *
	    adp->va_info.vi_cwidth) + sc->sc_xmargin) << 16) |
	    (((off / adp->va_info.vi_width) * adp->va_info.vi_cheight) +
	    sc->sc_ymargin));
	FUNC2(sc, DST_HEIGHT_WIDTH, (adp->va_info.vi_cwidth << 16) |
	    adp->va_info.vi_cheight);
	p = sc->sc_font + (c * adp->va_info.vi_cheight * sc->sc_cbwidth);
	for (i = 0; i < adp->va_info.vi_cheight * sc->sc_cbwidth; i += 4)
		FUNC2(sc, HOST_DATA0 + i, (p[i + 3] << 24 | p[i + 2] << 16 |
		    p[i + 1] << 8 | p[i]));

	return (0);
}