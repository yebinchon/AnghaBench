
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct path_exists_context {int pathspec; TYPE_2__* args; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {TYPE_1__* repo; } ;
struct TYPE_3__ {int index; } ;


 int READ_TREE_RECURSIVE ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (unsigned int) ;
 int match_pathspec (int ,int *,int ,int ,int ,int *,int) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int reject_entry(const struct object_id *oid, struct strbuf *base,
   const char *filename, unsigned mode,
   int stage, void *context)
{
 int ret = -1;
 struct path_exists_context *ctx = context;

 if (S_ISDIR(mode)) {
  struct strbuf sb = STRBUF_INIT;
  strbuf_addbuf(&sb, base);
  strbuf_addstr(&sb, filename);
  if (!match_pathspec(ctx->args->repo->index,
        &ctx->pathspec,
        sb.buf, sb.len, 0, ((void*)0), 1))
   ret = READ_TREE_RECURSIVE;
  strbuf_release(&sb);
 }
 return ret;
}
