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
struct drm_device {int /*<<< orphan*/ ** context_sareas; int /*<<< orphan*/ * ctx_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int DRM_MAX_CTXBITMAP ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_device * dev, int ctx_handle)
{
	if (ctx_handle < 0 || ctx_handle >= DRM_MAX_CTXBITMAP ||
	    dev->ctx_bitmap == NULL) {
		FUNC0("Attempt to free invalid context handle: %d\n",
		   ctx_handle);
		return;
	}

	FUNC1(dev);
	FUNC3(ctx_handle, dev->ctx_bitmap);
	dev->context_sareas[ctx_handle] = NULL;
	FUNC2(dev);
}