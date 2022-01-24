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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct machfb_softc {int sc_flags; int sc_ymargin; int sc_xmargin; } ;

/* Variables and functions */
 int CRTC_DBL_SCAN_EN ; 
 int /*<<< orphan*/  CUR_HORZ_VERT_OFF ; 
 int /*<<< orphan*/  CUR_HORZ_VERT_POSN ; 
 int /*<<< orphan*/  GEN_TEST_CNTL ; 
 int MACHFB_CUREN ; 
 int /*<<< orphan*/  FUNC0 (struct machfb_softc*,int) ; 
 int FUNC1 (struct machfb_softc*) ; 
 int FUNC2 (struct machfb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct machfb_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(video_adapter_t *adp, int x, int y, uint8_t *pixel_image,
    uint32_t pixel_mask, int size, int width)
{
	struct machfb_softc *sc;
	int error;

	sc = (struct machfb_softc *)adp;

	if ((!(sc->sc_flags & MACHFB_CUREN)) &&
	    (error = FUNC1(sc)) < 0)
		return (error);
	else {
		/*
		 * The hardware cursor always must be disabled when
		 * fiddling with its bits otherwise some artifacts
		 * may appear on the screen.
		 */
		FUNC0(sc, 0);
	}

	FUNC3(sc, CUR_HORZ_VERT_OFF, 0);
	if ((FUNC2(sc, GEN_TEST_CNTL) & CRTC_DBL_SCAN_EN) != 0)
		y <<= 1;
	FUNC3(sc, CUR_HORZ_VERT_POSN, ((y + sc->sc_ymargin) << 16) |
	    (x + sc->sc_xmargin));
	FUNC0(sc, 1);
	sc->sc_flags |= MACHFB_CUREN;

	return (0);
}