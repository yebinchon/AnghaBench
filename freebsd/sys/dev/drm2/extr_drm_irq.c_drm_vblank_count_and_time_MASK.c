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
typedef  scalar_t__ u32 ;
struct timeval {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * _vblank_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct timeval FUNC2 (struct drm_device*,int,scalar_t__) ; 

u32 FUNC3(struct drm_device *dev, int crtc,
			      struct timeval *vblanktime)
{
	u32 cur_vblank;

	/* Read timestamp from slot of _vblank_time ringbuffer
	 * that corresponds to current vblank count. Retry if
	 * count has incremented during readout. This works like
	 * a seqlock.
	 */
	do {
		cur_vblank = FUNC0(&dev->_vblank_count[crtc]);
		*vblanktime = FUNC2(dev, crtc, cur_vblank);
		FUNC1();
	} while (cur_vblank != FUNC0(&dev->_vblank_count[crtc]));

	return cur_vblank;
}