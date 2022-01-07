
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int nr; int * list; int alloc; } ;
struct write_commit_graph_context {TYPE_1__ oids; int r; int progress_done; scalar_t__ progress; } ;
struct packed_git {int dummy; } ;
struct object_info {int* typep; } ;
struct object_id {int dummy; } ;
typedef int off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int ALLOC_GROW (int *,int,int ) ;
 struct object_info OBJECT_INFO_INIT ;
 int OBJ_COMMIT ;
 int _ (char*) ;
 int die (int ,int ) ;
 int display_progress (scalar_t__,int ) ;
 int nth_packed_object_offset (struct packed_git*,int ) ;
 int oid_to_hex (struct object_id const*) ;
 int oidcpy (int *,struct object_id const*) ;
 scalar_t__ packed_object_info (int ,struct packed_git*,int ,struct object_info*) ;

__attribute__((used)) static int add_packed_commits(const struct object_id *oid,
         struct packed_git *pack,
         uint32_t pos,
         void *data)
{
 struct write_commit_graph_context *ctx = (struct write_commit_graph_context*)data;
 enum object_type type;
 off_t offset = nth_packed_object_offset(pack, pos);
 struct object_info oi = OBJECT_INFO_INIT;

 if (ctx->progress)
  display_progress(ctx->progress, ++ctx->progress_done);

 oi.typep = &type;
 if (packed_object_info(ctx->r, pack, offset, &oi) < 0)
  die(_("unable to get type of object %s"), oid_to_hex(oid));

 if (type != OBJ_COMMIT)
  return 0;

 ALLOC_GROW(ctx->oids.list, ctx->oids.nr + 1, ctx->oids.alloc);
 oidcpy(&(ctx->oids.list[ctx->oids.nr]), oid);
 ctx->oids.nr++;

 return 0;
}
