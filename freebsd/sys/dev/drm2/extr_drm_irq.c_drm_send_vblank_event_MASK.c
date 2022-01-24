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
struct timeval {int dummy; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct drm_device*,int,struct timeval*) ; 
 struct timeval FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_pending_vblank_event*,unsigned int,struct timeval*) ; 

void FUNC3(struct drm_device *dev, int crtc,
		struct drm_pending_vblank_event *e)
{
	struct timeval now;
	unsigned int seq;
	if (crtc >= 0) {
		seq = FUNC0(dev, crtc, &now);
	} else {
		seq = 0;

		now = FUNC1();
	}
	FUNC2(dev, e, seq, &now);
}