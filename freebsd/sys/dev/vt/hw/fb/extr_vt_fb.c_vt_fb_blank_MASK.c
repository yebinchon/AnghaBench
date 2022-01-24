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
typedef  int uint32_t ;
typedef  int u_int ;
typedef  size_t term_color_t ;
struct vt_device {struct fb_info* vd_softc; } ;
struct fb_info {int* fb_cmap; int fb_flags; scalar_t__ fb_vbase; int fb_height; int fb_stride; } ;

/* Variables and functions */
 int FUNC0 (struct fb_info*) ; 
 int FB_FLAG_NOWRITE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*,int,int) ; 

void
FUNC5(struct vt_device *vd, term_color_t color)
{
	struct fb_info *info;
	uint32_t c;
	u_int o, h;

	info = vd->vd_softc;
	c = info->fb_cmap[color];

	if (info->fb_flags & FB_FLAG_NOWRITE)
		return;

	FUNC1((info->fb_vbase != 0), ("Unmapped framebuffer"));

	switch (FUNC0(info)) {
	case 1:
		for (h = 0; h < info->fb_height; h++)
			for (o = 0; o < info->fb_stride; o++)
				FUNC2(info, h*info->fb_stride + o, c);
		break;
	case 2:
		for (h = 0; h < info->fb_height; h++)
			for (o = 0; o < info->fb_stride; o += 2)
				FUNC3(info, h*info->fb_stride + o, c);
		break;
	case 3:
		for (h = 0; h < info->fb_height; h++)
			for (o = 0; o < info->fb_stride; o += 3) {
				FUNC2(info, h*info->fb_stride + o,
				    (c >> 16) & 0xff);
				FUNC2(info, h*info->fb_stride + o + 1,
				    (c >> 8) & 0xff);
				FUNC2(info, h*info->fb_stride + o + 2,
				    c & 0xff);
			}
		break;
	case 4:
		for (h = 0; h < info->fb_height; h++)
			for (o = 0; o < info->fb_stride; o += 4)
				FUNC4(info, h*info->fb_stride + o, c);
		break;
	default:
		/* panic? */
		return;
	}
}