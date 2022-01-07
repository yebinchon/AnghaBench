
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;
struct archiver_args {TYPE_1__* repo; int baselen; struct commit* commit; scalar_t__ convert; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {int index; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISREG (unsigned int) ;
 int convert_to_working_tree (int ,char const*,int ,int ,struct strbuf*) ;
 int format_subst (struct commit const*,int ,int ,struct strbuf*) ;
 void* read_object_file (struct object_id const*,int*,unsigned long*) ;
 int strbuf_attach (struct strbuf*,void*,unsigned long,unsigned long) ;
 void* strbuf_detach (struct strbuf*,size_t*) ;

void *object_file_to_archive(const struct archiver_args *args,
        const char *path, const struct object_id *oid,
        unsigned int mode, enum object_type *type,
        unsigned long *sizep)
{
 void *buffer;
 const struct commit *commit = args->convert ? args->commit : ((void*)0);

 path += args->baselen;
 buffer = read_object_file(oid, type, sizep);
 if (buffer && S_ISREG(mode)) {
  struct strbuf buf = STRBUF_INIT;
  size_t size = 0;

  strbuf_attach(&buf, buffer, *sizep, *sizep + 1);
  convert_to_working_tree(args->repo->index, path, buf.buf, buf.len, &buf);
  if (commit)
   format_subst(commit, buf.buf, buf.len, &buf);
  buffer = strbuf_detach(&buf, &size);
  *sizep = size;
 }

 return buffer;
}
