
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nr; int * list; int alloc; } ;
struct write_commit_graph_context {TYPE_1__ oids; } ;
struct commit_list {TYPE_3__* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_5__ {int flags; int oid; } ;
struct TYPE_6__ {TYPE_2__ object; } ;


 int ALLOC_GROW (int *,int,int ) ;
 int REACHABLE ;
 int oidcpy (int *,int *) ;

__attribute__((used)) static void add_missing_parents(struct write_commit_graph_context *ctx, struct commit *commit)
{
 struct commit_list *parent;
 for (parent = commit->parents; parent; parent = parent->next) {
  if (!(parent->item->object.flags & REACHABLE)) {
   ALLOC_GROW(ctx->oids.list, ctx->oids.nr + 1, ctx->oids.alloc);
   oidcpy(&ctx->oids.list[ctx->oids.nr], &(parent->item->object.oid));
   ctx->oids.nr++;
   parent->item->object.flags |= REACHABLE;
  }
 }
}
