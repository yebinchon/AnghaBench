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
typedef  int u_int ;
typedef  int term_color_t ;
struct vt_device {int vd_height; int vd_transpose; int vd_width; TYPE_1__* vd_driver; int /*<<< orphan*/  vd_video_dev; struct fb_info* vd_softc; } ;
struct fb_info {int fb_height; int fb_stride; int fb_width; int fb_bpp; scalar_t__ fb_size; scalar_t__ fb_pbase; scalar_t__ fb_vbase; int fb_cmsize; int /*<<< orphan*/  fb_cmap; int /*<<< orphan*/  fb_flags; int /*<<< orphan*/  fb_video_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* vd_blank ) (struct vt_device*,int) ;} ;

/* Variables and functions */
 int CN_DEAD ; 
 int CN_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FB_FLAG_NOMMAP ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int NBBY ; 
 int TC_BLACK ; 
 int TC_LIGHT ; 
 int TC_WHITE ; 
 scalar_t__ FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  VT_FB_MAX_HEIGHT ; 
 int /*<<< orphan*/  VT_FB_MAX_WIDTH ; 
 int /*<<< orphan*/  FUNC3 (struct vt_device*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vt_device*) ; 

int
FUNC6(struct vt_device *vd)
{
	struct fb_info *info;
	u_int margin;
	int bg, err;
	term_color_t c;

	info = vd->vd_softc;
	vd->vd_height = FUNC1(VT_FB_MAX_HEIGHT, info->fb_height);
	margin = (info->fb_height - vd->vd_height) >> 1;
	vd->vd_transpose = margin * info->fb_stride;
	vd->vd_width = FUNC1(VT_FB_MAX_WIDTH, info->fb_width);
	margin = (info->fb_width - vd->vd_width) >> 1;
	vd->vd_transpose += margin * (info->fb_bpp / NBBY);
	vd->vd_video_dev = info->fb_video_dev;

	if (info->fb_size == 0)
		return (CN_DEAD);

	if (info->fb_pbase == 0 && info->fb_vbase == 0)
		info->fb_flags |= FB_FLAG_NOMMAP;

	if (info->fb_cmsize <= 0) {
		err = FUNC4(info->fb_cmap, FUNC0(info));
		if (err)
			return (CN_DEAD);
		info->fb_cmsize = 16;
	}

	c = TC_BLACK;
	if (FUNC2("teken.bg_color", &bg) != 0) {
		if (bg == TC_WHITE)
			bg |= TC_LIGHT;
		c = bg;
	}
	/* Clear the screen. */
	vd->vd_driver->vd_blank(vd, c);

	/* Wakeup screen. KMS need this. */
	FUNC5(vd);

	return (CN_INTERNAL);
}