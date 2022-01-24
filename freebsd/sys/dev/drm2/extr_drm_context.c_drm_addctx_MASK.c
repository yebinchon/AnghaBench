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
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  ctx_count; int /*<<< orphan*/  ctxlist; } ;
struct drm_ctx_list {int handle; int /*<<< orphan*/  head; struct drm_file* tag; } ;
struct drm_ctx {int handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DRM_KERNEL_CONTEXT ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  DRM_MEM_CTXBITMAP ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 void* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drm_ctx_list* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_device *dev, void *data,
	       struct drm_file *file_priv)
{
	struct drm_ctx_list *ctx_entry;
	struct drm_ctx *ctx = data;

	ctx->handle = FUNC4(dev);
	if (ctx->handle == DRM_KERNEL_CONTEXT) {
		/* Skip kernel's context and get a new one. */
		ctx->handle = FUNC4(dev);
	}
	FUNC0("%d\n", ctx->handle);
	if (ctx->handle == -1) {
		FUNC0("Not enough free contexts.\n");
		/* Should this return -EBUSY instead? */
		return -ENOMEM;
	}

	ctx_entry = FUNC6(sizeof(*ctx_entry), DRM_MEM_CTXBITMAP, M_NOWAIT);
	if (!ctx_entry) {
		FUNC0("out of memory\n");
		return -ENOMEM;
	}

	FUNC3(&ctx_entry->head);
	ctx_entry->handle = ctx->handle;
	ctx_entry->tag = file_priv;

	FUNC1(dev);
	FUNC5(&ctx_entry->head, &dev->ctxlist);
	++dev->ctx_count;
	FUNC2(dev);

	return 0;
}