#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nr; int /*<<< orphan*/ * list; int /*<<< orphan*/  alloc; } ;
struct write_commit_graph_context {TYPE_1__ oids; } ;
struct commit_list {TYPE_3__* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {TYPE_2__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int REACHABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct write_commit_graph_context *ctx, struct commit *commit)
{
	struct commit_list *parent;
	for (parent = commit->parents; parent; parent = parent->next) {
		if (!(parent->item->object.flags & REACHABLE)) {
			FUNC0(ctx->oids.list, ctx->oids.nr + 1, ctx->oids.alloc);
			FUNC1(&ctx->oids.list[ctx->oids.nr], &(parent->item->object.oid));
			ctx->oids.nr++;
			parent->item->object.flags |= REACHABLE;
		}
	}
}