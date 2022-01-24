#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  size_t term_color_t ;
struct TYPE_3__ {unsigned int tp_row; unsigned int tp_col; } ;
struct TYPE_4__ {TYPE_1__ tr_end; } ;
struct vt_window {TYPE_2__ vw_draw_area; } ;
struct vt_device {scalar_t__ vd_transpose; struct fb_info* vd_softc; } ;
struct fb_info {int* fb_cmap; int fb_flags; scalar_t__ fb_vbase; unsigned int fb_stride; } ;

/* Variables and functions */
 int FUNC0 (struct fb_info*) ; 
 int FB_FLAG_NOWRITE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*,int,int) ; 

void
FUNC5(struct vt_device *vd, const struct vt_window *vw,
    const uint8_t *pattern, const uint8_t *mask,
    unsigned int width, unsigned int height,
    unsigned int x, unsigned int y, term_color_t fg, term_color_t bg)
{
	struct fb_info *info;
	uint32_t fgc, bgc, cc, o;
	int bpp, bpl, xi, yi;
	int bit, byte;

	info = vd->vd_softc;
	bpp = FUNC0(info);
	fgc = info->fb_cmap[fg];
	bgc = info->fb_cmap[bg];
	bpl = (width + 7) / 8; /* Bytes per source line. */

	if (info->fb_flags & FB_FLAG_NOWRITE)
		return;

	FUNC1((info->fb_vbase != 0), ("Unmapped framebuffer"));

	/* Bound by right and bottom edges. */
	if (y + height > vw->vw_draw_area.tr_end.tp_row) {
		if (y >= vw->vw_draw_area.tr_end.tp_row)
			return;
		height = vw->vw_draw_area.tr_end.tp_row - y;
	}
	if (x + width > vw->vw_draw_area.tr_end.tp_col) {
		if (x >= vw->vw_draw_area.tr_end.tp_col)
			return;
		width = vw->vw_draw_area.tr_end.tp_col - x;
	}
	for (yi = 0; yi < height; yi++) {
		for (xi = 0; xi < width; xi++) {
			byte = yi * bpl + xi / 8;
			bit = 0x80 >> (xi % 8);
			/* Skip pixel write, if mask bit not set. */
			if (mask != NULL && (mask[byte] & bit) == 0)
				continue;
			o = (y + yi) * info->fb_stride + (x + xi) * bpp;
			o += vd->vd_transpose;
			cc = pattern[byte] & bit ? fgc : bgc;

			switch(bpp) {
			case 1:
				FUNC2(info, o, cc);
				break;
			case 2:
				FUNC3(info, o, cc);
				break;
			case 3:
				/* Packed mode, so unaligned. Byte access. */
				FUNC2(info, o, (cc >> 16) & 0xff);
				FUNC2(info, o + 1, (cc >> 8) & 0xff);
				FUNC2(info, o + 2, cc & 0xff);
				break;
			case 4:
				FUNC4(info, o, cc);
				break;
			default:
				/* panic? */
				break;
			}
		}
	}
}