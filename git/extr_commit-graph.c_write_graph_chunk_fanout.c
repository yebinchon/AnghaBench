
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int nr; struct commit** list; } ;
struct write_commit_graph_context {int progress_cnt; int progress; TYPE_3__ commits; } ;
struct hashfile {int dummy; } ;
struct TYPE_4__ {int* hash; } ;
struct TYPE_5__ {TYPE_1__ oid; } ;
struct commit {TYPE_2__ object; } ;


 int display_progress (int ,int ) ;
 int hashwrite_be32 (struct hashfile*,int) ;

__attribute__((used)) static void write_graph_chunk_fanout(struct hashfile *f,
         struct write_commit_graph_context *ctx)
{
 int i, count = 0;
 struct commit **list = ctx->commits.list;






 for (i = 0; i < 256; i++) {
  while (count < ctx->commits.nr) {
   if ((*list)->object.oid.hash[0] != i)
    break;
   display_progress(ctx->progress, ++ctx->progress_cnt);
   count++;
   list++;
  }

  hashwrite_be32(f, count);
 }
}
