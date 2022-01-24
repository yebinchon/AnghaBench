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
typedef  int uint8_t ;
struct videomode {int dot_clock; unsigned int hdisplay; unsigned int htotal; unsigned int hsync_start; unsigned int hsync_end; unsigned int vdisplay; unsigned int vtotal; unsigned int vsync_start; unsigned int vsync_end; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int EDID_DET_TIMING_FLAG_HSYNC_POSITIVE ; 
 int EDID_DET_TIMING_FLAG_INTERLACE ; 
 int EDID_DET_TIMING_FLAG_STEREO ; 
 int EDID_DET_TIMING_FLAG_STEREO_MODE ; 
 int EDID_DET_TIMING_FLAG_VSYNC_POSITIVE ; 
 unsigned int FUNC2 (int*) ; 
 unsigned int FUNC3 (int*) ; 
 unsigned int FUNC4 (int*) ; 
 unsigned int FUNC5 (int*) ; 
 unsigned int FUNC6 (int*) ; 
 unsigned int FUNC7 (int*) ; 
 unsigned int FUNC8 (int*) ; 
 unsigned int FUNC9 (int*) ; 
 int /*<<< orphan*/  VID_INTERLACE ; 
 int /*<<< orphan*/  VID_NHSYNC ; 
 int /*<<< orphan*/  VID_NVSYNC ; 
 int /*<<< orphan*/  VID_PHSYNC ; 
 int /*<<< orphan*/  VID_PVSYNC ; 

__attribute__((used)) static int
FUNC10(uint8_t *data, struct videomode *vmp)
{
	unsigned	hactive, hblank, hsyncwid, hsyncoff;
	unsigned	vactive, vblank, vsyncwid, vsyncoff;
	uint8_t		flags;

	flags = FUNC1(data);

	/* we don't support stereo modes (for now) */
	if (flags & (EDID_DET_TIMING_FLAG_STEREO |
		EDID_DET_TIMING_FLAG_STEREO_MODE))
		return 0;

	vmp->dot_clock = FUNC0(data) / 1000;

	hactive = FUNC2(data);
	hblank = FUNC3(data);
	hsyncwid = FUNC5(data);
	hsyncoff = FUNC4(data);

	vactive = FUNC6(data);
	vblank = FUNC7(data);
	vsyncwid = FUNC9(data);
	vsyncoff = FUNC8(data);
	
	/* Borders are contained within the blank areas. */

	vmp->hdisplay = hactive;
	vmp->htotal = hactive + hblank;
	vmp->hsync_start = hactive + hsyncoff;
	vmp->hsync_end = vmp->hsync_start + hsyncwid;

	vmp->vdisplay = vactive;
	vmp->vtotal = vactive + vblank;
	vmp->vsync_start = vactive + vsyncoff;
	vmp->vsync_end = vmp->vsync_start + vsyncwid;

	vmp->flags = 0;

	if (flags & EDID_DET_TIMING_FLAG_INTERLACE)
		vmp->flags |= VID_INTERLACE;
	if (flags & EDID_DET_TIMING_FLAG_HSYNC_POSITIVE)
		vmp->flags |= VID_PHSYNC;
	else
		vmp->flags |= VID_NHSYNC;

	if (flags & EDID_DET_TIMING_FLAG_VSYNC_POSITIVE)
		vmp->flags |= VID_PVSYNC;
	else
		vmp->flags |= VID_NVSYNC;

	return 1;
}