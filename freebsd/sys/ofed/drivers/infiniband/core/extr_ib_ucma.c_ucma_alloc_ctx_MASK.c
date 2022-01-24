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
struct ucma_file {int /*<<< orphan*/  ctx_list; } ;
struct ucma_context {scalar_t__ id; int /*<<< orphan*/  list; struct ucma_file* file; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  comp; int /*<<< orphan*/  ref; int /*<<< orphan*/  close_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ctx_idr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct ucma_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ucma_context*) ; 
 struct ucma_context* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ucma_close_id ; 

__attribute__((used)) static struct ucma_context *FUNC10(struct ucma_file *file)
{
	struct ucma_context *ctx;

	ctx = FUNC6(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return NULL;

	FUNC1(&ctx->close_work, ucma_close_id);
	FUNC2(&ctx->ref, 1);
	FUNC4(&ctx->comp);
	FUNC0(&ctx->mc_list);
	ctx->file = file;

	FUNC8(&mut);
	ctx->id = FUNC3(&ctx_idr, ctx, 0, 0, GFP_KERNEL);
	FUNC9(&mut);
	if (ctx->id < 0)
		goto error;

	FUNC7(&ctx->list, &file->ctx_list);
	return ctx;

error:
	FUNC5(ctx);
	return NULL;
}