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
typedef  size_t u8 ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_display_mode*,struct drm_display_mode const*) ; 
 size_t drm_num_cea_modes ; 
 int /*<<< orphan*/ * edid_cea_modes ; 

u8 FUNC1(struct drm_display_mode *to_match)
{
	const struct drm_display_mode *cea_mode;
	u8 mode;

	for (mode = 0; mode < drm_num_cea_modes; mode++) {
		cea_mode = (const struct drm_display_mode *)&edid_cea_modes[mode];

		if (FUNC0(to_match, cea_mode))
			return mode + 1;
	}
	return 0;
}