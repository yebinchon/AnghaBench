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
typedef  int /*<<< orphan*/  video_adapter_t ;
struct machfb_softc {scalar_t__ sc_draw_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLR_CMP_CNTL ; 
 int /*<<< orphan*/  DP_MIX ; 
 int /*<<< orphan*/  DP_PIX_WIDTH ; 
 int /*<<< orphan*/  DP_SRC ; 
 int /*<<< orphan*/  DP_WRITE_MASK ; 
 int DST_8BPP ; 
 int /*<<< orphan*/  DST_CNTL ; 
 int /*<<< orphan*/  DST_HEIGHT_WIDTH ; 
 int DST_X_LEFT_TO_RIGHT ; 
 int DST_Y_TOP_TO_BOTTOM ; 
 int /*<<< orphan*/  DST_Y_X ; 
 int FRGD_SRC_FRGD_CLR ; 
 int HOST_8BPP ; 
 scalar_t__ MACHFB_DRAW_FILLRECT ; 
 int MIX_SRC ; 
 int SRC_8BPP ; 
 int /*<<< orphan*/  SRC_CNTL ; 
 int SRC_LINE_X_LEFT_TO_RIGHT ; 
 int /*<<< orphan*/  SRC_WIDTH1 ; 
 int /*<<< orphan*/  SRC_Y_X ; 
 int /*<<< orphan*/  FUNC0 (struct machfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct machfb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct machfb_softc*,int) ; 

__attribute__((used)) static int
FUNC3(video_adapter_t *adp, int val, int x, int y, int cx, int cy)
{
	struct machfb_softc *sc;

	sc = (struct machfb_softc *)adp;

	if (sc->sc_draw_cache != MACHFB_DRAW_FILLRECT) {
		FUNC2(sc, 7);
		FUNC1(sc, DP_WRITE_MASK, 0xff);
		FUNC1(sc, DP_PIX_WIDTH, DST_8BPP | SRC_8BPP | HOST_8BPP);
		FUNC1(sc, DP_SRC, FRGD_SRC_FRGD_CLR);
		FUNC1(sc, DP_MIX, MIX_SRC << 16);
		FUNC1(sc, CLR_CMP_CNTL, 0);	/* no transparency */
		FUNC1(sc, SRC_CNTL, SRC_LINE_X_LEFT_TO_RIGHT);
		FUNC1(sc, DST_CNTL, DST_X_LEFT_TO_RIGHT | DST_Y_TOP_TO_BOTTOM);
		sc->sc_draw_cache = MACHFB_DRAW_FILLRECT;
	}
	FUNC0(sc, val);
	FUNC2(sc, 4);
	FUNC1(sc, SRC_Y_X, (x << 16) | y);
	FUNC1(sc, SRC_WIDTH1, cx);
	FUNC1(sc, DST_Y_X, (x << 16) | y);
	FUNC1(sc, DST_HEIGHT_WIDTH, (cx << 16) | cy);

	return (0);
}