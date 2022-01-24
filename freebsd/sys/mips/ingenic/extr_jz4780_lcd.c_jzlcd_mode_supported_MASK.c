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
struct videomode {scalar_t__ hdisplay; scalar_t__ vdisplay; int flags; } ;

/* Variables and functions */
 scalar_t__ FB_MAX_BW ; 
 scalar_t__ FB_MAX_H ; 
 scalar_t__ FB_MAX_W ; 
 int VID_INTERLACE ; 
 scalar_t__ FUNC0 (struct videomode const*) ; 

__attribute__((used)) static int
FUNC1(const struct videomode *mode)
{
	/* Width and height must be less than 2048 */
	if (mode->hdisplay > FB_MAX_W || mode->vdisplay > FB_MAX_H)
		return (0);

	/* Bandwidth check */
	if (FUNC0(mode) > FB_MAX_BW)
		return (0);

	/* Interlace modes not yet supported by the driver */
	if ((mode->flags & VID_INTERLACE) != 0)
		return (0);

	return (1);
}