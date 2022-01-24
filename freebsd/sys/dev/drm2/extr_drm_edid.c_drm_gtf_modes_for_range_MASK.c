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
struct minimode {int /*<<< orphan*/  r; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct edid {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
struct detailed_timing {int dummy; } ;

/* Variables and functions */
 struct drm_display_mode* FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 struct minimode* extra_modes ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_display_mode*,struct edid*,struct detailed_timing*) ; 
 int num_extra_modes ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,struct drm_display_mode*) ; 

__attribute__((used)) static int
FUNC6(struct drm_connector *connector, struct edid *edid,
			struct detailed_timing *timing)
{
	int i, modes = 0;
	struct drm_display_mode *newmode;
	struct drm_device *dev = connector->dev;

	for (i = 0; i < num_extra_modes; i++) {
		const struct minimode *m = &extra_modes[i];
		newmode = FUNC0(dev, m->w, m->h, m->r, 0, 0);
		if (!newmode)
			return modes;

		FUNC3(newmode);
		if (!FUNC4(newmode, edid, timing) ||
		    !FUNC5(connector, newmode)) {
			FUNC1(dev, newmode);
			continue;
		}

		FUNC2(connector, newmode);
		modes++;
	}

	return modes;
}