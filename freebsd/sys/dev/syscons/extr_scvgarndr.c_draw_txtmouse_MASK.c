#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_short ;
typedef  int u_char ;
struct mousedata {int* md_border; int* md_interior; } ;
struct TYPE_6__ {int font_size; int yoff; int xsize; int xoff; int /*<<< orphan*/  scr; TYPE_1__* sc; scalar_t__ font; struct mousedata* mouse_data; } ;
typedef  TYPE_2__ scr_stat ;
struct TYPE_7__ {int va_flags; int va_crtc_addr; } ;
struct TYPE_5__ {int mouse_char; TYPE_3__* adp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int V_ADP_COLOR ; 
 int V_ADP_CWIDTH9 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  sc_txtmouse_no_retrace_wait ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int*,int,int) ; 

__attribute__((used)) static void
FUNC7(scr_stat *scp, int x, int y)
{
#ifndef SC_ALT_MOUSE_IMAGE
    if (FUNC0(scp->sc->adp->va_flags)) {
	const struct mousedata *mdp;
	uint32_t border, interior;
	u_char font_buf[128];
	u_short cursor[32];
	u_char c;
	int pos;
	int xoffset, yoffset;
	int crtc_addr;
	int i;

	mdp = scp->mouse_data;

	/* prepare mousepointer char's bitmaps */
	pos = (y/scp->font_size - scp->yoff)*scp->xsize + x/8 - scp->xoff;
	FUNC1(scp->font + FUNC4(&scp->scr, pos)*scp->font_size,
	      &font_buf[0], scp->font_size);
	FUNC1(scp->font + FUNC4(&scp->scr, pos + 1)*scp->font_size,
	      &font_buf[32], scp->font_size);
	FUNC1(scp->font 
		 + FUNC4(&scp->scr, pos + scp->xsize)*scp->font_size,
	      &font_buf[64], scp->font_size);
	FUNC1(scp->font
		 + FUNC4(&scp->scr, pos + scp->xsize + 1)*scp->font_size,
	      &font_buf[96], scp->font_size);
	for (i = 0; i < scp->font_size; ++i) {
		cursor[i] = font_buf[i]<<8 | font_buf[i+32];
		cursor[i + scp->font_size] = font_buf[i+64]<<8 | font_buf[i+96];
	}

	/* now and-or in the mousepointer image */
	xoffset = x%8;
	yoffset = y%scp->font_size;
	for (i = 0; i < 16; ++i) {
		border = mdp->md_border[i] << 8; /* avoid right shifting out */
		interior = mdp->md_interior[i] << 8;
		border >>= xoffset;		/* normalize */
		interior >>= xoffset;
		if (scp->sc->adp->va_flags & V_ADP_CWIDTH9) {
			/* skip gaps between characters */
			border = (border & 0xff0000) |
				 (border & 0x007f80) << 1 |
				 (border & 0x00003f) << 2;
			interior = (interior & 0xff0000) |
				   (interior & 0x007f80) << 1 |
				   (interior & 0x00003f) << 2;
		}
		border >>= 8;			/* back to normal position */
		interior >>= 8;
		cursor[i + yoffset] = (cursor[i + yoffset]  & ~border) |
				      interior;
	}
	for (i = 0; i < scp->font_size; ++i) {
		font_buf[i] = (cursor[i] & 0xff00) >> 8;
		font_buf[i + 32] = cursor[i] & 0xff;
		font_buf[i + 64] = (cursor[i + scp->font_size] & 0xff00) >> 8;
		font_buf[i + 96] = cursor[i + scp->font_size] & 0xff;
	}

#if 1
	/* wait for vertical retrace to avoid jitter on some videocards */
	crtc_addr = scp->sc->adp->va_crtc_addr;
	while (!sc_txtmouse_no_retrace_wait &&
	    !(FUNC2(crtc_addr + 6) & 0x08))
		/* idle */ ;
#endif
	c = scp->sc->mouse_char;
	FUNC6(scp->sc->adp, 0, 32, 8, font_buf, c, 4); 

	FUNC5(&scp->scr, pos, c, FUNC3(&scp->scr, pos));
	/* FIXME: may be out of range! */
	FUNC5(&scp->scr, pos + scp->xsize, c + 2,
		    FUNC3(&scp->scr, pos + scp->xsize));
	if (x < (scp->xsize - 1)*8) {
		FUNC5(&scp->scr, pos + 1, c + 1,
			    FUNC3(&scp->scr, pos + 1));
		FUNC5(&scp->scr, pos + scp->xsize + 1, c + 3,
			    FUNC3(&scp->scr, pos + scp->xsize + 1));
	}
    } else
#endif /* SC_ALT_MOUSE_IMAGE */
    {
	/* Red, magenta and brown are mapped to green to keep it readable */
	static const int col_conv[16] = {
		6, 6, 6, 6, 2, 2, 2, 6, 14, 14, 14, 14, 10, 10, 10, 14
	};
	int pos;
	int color;
	int a;

	pos = (y/scp->font_size - scp->yoff)*scp->xsize + x/8 - scp->xoff;
	a = FUNC3(&scp->scr, pos);
	if (scp->sc->adp->va_flags & V_ADP_COLOR)
		color = (col_conv[(a & 0xf000) >> 12] << 12)
			| ((a & 0x0f00) | 0x0800);
	else
		color = ((a & 0xf000) >> 4) | ((a & 0x0f00) << 4);
	FUNC5(&scp->scr, pos, FUNC4(&scp->scr, pos), color);
    }
}