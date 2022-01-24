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
struct ib_ucm_file {int /*<<< orphan*/  ctxs; } ;
struct ib_ucm_context {scalar_t__ id; int /*<<< orphan*/  file_list; int /*<<< orphan*/  events; struct ib_ucm_file* file; int /*<<< orphan*/  comp; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ctx_id_mutex ; 
 int /*<<< orphan*/  ctx_id_table ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct ib_ucm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_ucm_context*) ; 
 struct ib_ucm_context* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ib_ucm_context *FUNC9(struct ib_ucm_file *file)
{
	struct ib_ucm_context *ctx;

	ctx = FUNC5(sizeof *ctx, GFP_KERNEL);
	if (!ctx)
		return NULL;

	FUNC1(&ctx->ref, 1);
	FUNC3(&ctx->comp);
	ctx->file = file;
	FUNC0(&ctx->events);

	FUNC7(&ctx_id_mutex);
	ctx->id = FUNC2(&ctx_id_table, ctx, 0, 0, GFP_KERNEL);
	FUNC8(&ctx_id_mutex);
	if (ctx->id < 0)
		goto error;

	FUNC6(&ctx->file_list, &file->ctxs);
	return ctx;

error:
	FUNC4(ctx);
	return NULL;
}