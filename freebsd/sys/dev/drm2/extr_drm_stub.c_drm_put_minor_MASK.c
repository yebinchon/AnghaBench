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
struct drm_minor {int /*<<< orphan*/  device; int /*<<< orphan*/  buf_sigio; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MEM_MINOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_minor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_minor **minor_p)
{
	struct drm_minor *minor = *minor_p;

	FUNC0("release secondary minor %d\n", minor->index);

	FUNC3(&minor->buf_sigio);

	FUNC1(minor->device);

	FUNC2(minor, DRM_MEM_MINOR);
	*minor_p = NULL;
	return 0;
}