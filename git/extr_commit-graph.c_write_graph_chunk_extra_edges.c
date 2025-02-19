
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int nr; struct commit** list; } ;
struct write_commit_graph_context {int new_base_graph; scalar_t__ new_num_commits_in_base; TYPE_1__ commits; int progress_cnt; int progress; } ;
struct hashfile {int dummy; } ;
struct commit_list {struct commit_list* next; TYPE_5__* item; } ;
struct TYPE_9__ {int hash; } ;
struct TYPE_8__ {TYPE_4__ oid; } ;
struct commit {TYPE_3__ object; struct commit_list* parents; } ;
struct TYPE_7__ {TYPE_4__ oid; } ;
struct TYPE_10__ {TYPE_2__ object; } ;


 int BUG (char*,int ,int ) ;
 int GRAPH_LAST_EDGE ;
 int commit_to_sha1 ;
 int display_progress (int ,int ) ;
 scalar_t__ find_commit_in_graph (TYPE_5__*,int ,int*) ;
 int hashwrite_be32 (struct hashfile*,int) ;
 int oid_to_hex (TYPE_4__*) ;
 int sha1_pos (int ,struct commit**,int ,int ) ;

__attribute__((used)) static void write_graph_chunk_extra_edges(struct hashfile *f,
       struct write_commit_graph_context *ctx)
{
 struct commit **list = ctx->commits.list;
 struct commit **last = ctx->commits.list + ctx->commits.nr;
 struct commit_list *parent;

 while (list < last) {
  int num_parents = 0;

  display_progress(ctx->progress, ++ctx->progress_cnt);

  for (parent = (*list)->parents; num_parents < 3 && parent;
       parent = parent->next)
   num_parents++;

  if (num_parents <= 2) {
   list++;
   continue;
  }


  for (parent = (*list)->parents->next; parent; parent = parent->next) {
   int edge_value = sha1_pos(parent->item->object.oid.hash,
        ctx->commits.list,
        ctx->commits.nr,
        commit_to_sha1);

   if (edge_value >= 0)
    edge_value += ctx->new_num_commits_in_base;
   else {
    uint32_t pos;
    if (find_commit_in_graph(parent->item,
        ctx->new_base_graph,
        &pos))
     edge_value = pos;
   }

   if (edge_value < 0)
    BUG("missing parent %s for commit %s",
        oid_to_hex(&parent->item->object.oid),
        oid_to_hex(&(*list)->object.oid));
   else if (!parent->next)
    edge_value |= GRAPH_LAST_EDGE;

   hashwrite_be32(f, edge_value);
  }

  list++;
 }
}
