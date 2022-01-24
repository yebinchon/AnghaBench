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
struct drm_local_map {int dummy; } ;
struct drm_device {int max_context; struct drm_local_map** context_sareas; int /*<<< orphan*/ * ctx_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int DRM_MAX_CTXBITMAP ; 
 int /*<<< orphan*/  DRM_MEM_SAREA ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct drm_local_map** FUNC5 (struct drm_local_map**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct drm_device * dev)
{
	int bit;

	if (dev->ctx_bitmap == NULL)
		return -1;

	FUNC1(dev);
	bit = FUNC4(dev->ctx_bitmap, DRM_MAX_CTXBITMAP);
	if (bit >= DRM_MAX_CTXBITMAP) {
		FUNC2(dev);
		return -1;
	}

	FUNC6(bit, dev->ctx_bitmap);
	FUNC0("bit : %d\n", bit);
	if ((bit+1) > dev->max_context) {
		struct drm_local_map **ctx_sareas;
		int max_ctx = (bit+1);

		ctx_sareas = FUNC5(dev->context_sareas,
		    max_ctx * sizeof(*dev->context_sareas),
		    DRM_MEM_SAREA, M_NOWAIT);
		if (ctx_sareas == NULL) {
			FUNC3(bit, dev->ctx_bitmap);
			FUNC0("failed to allocate bit : %d\n", bit);
			FUNC2(dev);
			return -1;
		}
		dev->max_context = max_ctx;
		dev->context_sareas = ctx_sareas;
		dev->context_sareas[bit] = NULL;
	}
	FUNC2(dev);
	return bit;
}