#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int nr; int /*<<< orphan*/ * list; int /*<<< orphan*/  alloc; } ;
struct write_commit_graph_context {TYPE_1__ oids; int /*<<< orphan*/  r; int /*<<< orphan*/  progress_done; scalar_t__ progress; } ;
struct packed_git {int dummy; } ;
struct object_info {int* typep; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct object_info OBJECT_INFO_INIT ; 
 int OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct packed_git*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct object_id const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct packed_git*,int /*<<< orphan*/ ,struct object_info*) ; 

__attribute__((used)) static int FUNC8(const struct object_id *oid,
			      struct packed_git *pack,
			      uint32_t pos,
			      void *data)
{
	struct write_commit_graph_context *ctx = (struct write_commit_graph_context*)data;
	enum object_type type;
	off_t offset = FUNC4(pack, pos);
	struct object_info oi = OBJECT_INFO_INIT;

	if (ctx->progress)
		FUNC3(ctx->progress, ++ctx->progress_done);

	oi.typep = &type;
	if (FUNC7(ctx->r, pack, offset, &oi) < 0)
		FUNC2(FUNC1("unable to get type of object %s"), FUNC5(oid));

	if (type != OBJ_COMMIT)
		return 0;

	FUNC0(ctx->oids.list, ctx->oids.nr + 1, ctx->oids.alloc);
	FUNC6(&(ctx->oids.list[ctx->oids.nr]), oid);
	ctx->oids.nr++;

	return 0;
}