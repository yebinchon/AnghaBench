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
struct drm_device {int max_context; int /*<<< orphan*/ * context_sareas; int /*<<< orphan*/ * ctx_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  DRM_MEM_CTXBITMAP ; 
 int DRM_RESERVED_CONTEXTS ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int ENOMEM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct drm_device * dev)
{
	int i;
   	int temp;

	FUNC1(dev);
	dev->ctx_bitmap = FUNC4(PAGE_SIZE, DRM_MEM_CTXBITMAP,
	    M_NOWAIT | M_ZERO);
	if (dev->ctx_bitmap == NULL) {
		FUNC2(dev);
		return ENOMEM;
	}
	dev->context_sareas = NULL;
	dev->max_context = -1;
	FUNC2(dev);

	for (i = 0; i < DRM_RESERVED_CONTEXTS; i++) {
		temp = FUNC3(dev);
		FUNC0("drm_ctxbitmap_init : %d\n", temp);
	}

	return 0;
}