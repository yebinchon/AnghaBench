#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct path_exists_context {int /*<<< orphan*/  pathspec; TYPE_2__* args; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {TYPE_1__* repo; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int READ_TREE_RECURSIVE ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static int FUNC5(const struct object_id *oid, struct strbuf *base,
			const char *filename, unsigned mode,
			int stage, void *context)
{
	int ret = -1;
	struct path_exists_context *ctx = context;

	if (FUNC0(mode)) {
		struct strbuf sb = STRBUF_INIT;
		FUNC2(&sb, base);
		FUNC3(&sb, filename);
		if (!FUNC1(ctx->args->repo->index,
				    &ctx->pathspec,
				    sb.buf, sb.len, 0, NULL, 1))
			ret = READ_TREE_RECURSIVE;
		FUNC4(&sb);
	}
	return ret;
}