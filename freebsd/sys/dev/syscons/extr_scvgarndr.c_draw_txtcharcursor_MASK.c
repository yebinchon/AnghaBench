#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
struct TYPE_6__ {int flags; int base; scalar_t__ height; } ;
struct TYPE_7__ {int font_size; int /*<<< orphan*/  scr; TYPE_1__ curs_attr; TYPE_3__* sc; } ;
typedef  TYPE_2__ scr_stat ;
struct TYPE_8__ {unsigned char* font_8; unsigned char* font_16; unsigned char* font_14; int cursor_char; int /*<<< orphan*/  adp; } ;
typedef  TYPE_3__ sc_softc_t ;

/* Variables and functions */
 int CONS_CHAR_CURSOR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned char*,int,int) ; 

__attribute__((used)) static void
FUNC6(scr_stat *scp, int at, u_short c, u_short a, int flip)
{
	sc_softc_t *sc;

	sc = scp->sc;

#ifndef SC_NO_FONT_LOADING
	if (scp->curs_attr.flags & CONS_CHAR_CURSOR) {
		unsigned char *font;
		int h;
		int i;

		if (scp->font_size < 14) {
			font = sc->font_8;
			h = 8;
		} else if (scp->font_size >= 16) {
			font = sc->font_16;
			h = 16;
		} else {
			font = sc->font_14;
			h = 14;
		}
		if (scp->curs_attr.base >= h)
			return;
		if (flip)
			a = FUNC4(a, TRUE);
		/*
		 * This clause handles partial-block cursors in text mode.
		 * We want to change the attribute only under the partial
		 * block, but in text mode we can only change full blocks.
		 * Use reverse video instead.
		 */
		FUNC0(font + c*h, font + sc->cursor_char*h, h);
		font = font + sc->cursor_char*h;
		for (i = FUNC1(h - scp->curs_attr.base - scp->curs_attr.height, 0);
			i < h - scp->curs_attr.base; ++i) {
			font[i] ^= 0xff;
		}
		/* XXX */
		FUNC5(sc->adp, 0, h, 8, font, sc->cursor_char, 1);
		FUNC2(&scp->scr, at, sc->cursor_char, a);
	} else
#endif /* SC_NO_FONT_LOADING */
	{
		if (flip)
			a = FUNC4(a, TRUE);
		a = FUNC3(scp, a, TRUE);
		FUNC2(&scp->scr, at, c, a);
	}
}