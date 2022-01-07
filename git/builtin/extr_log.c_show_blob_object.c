
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allow_textconv; int textconv_set_via_cmdline; } ;
struct TYPE_4__ {TYPE_1__ flags; int file; } ;
struct rev_info {TYPE_2__ diffopt; } ;
struct object_id {int dummy; } ;
struct object_context {int path; int mode; } ;


 int GET_OID_RECORD_PATH ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int fflush (int ) ;
 int free (int ) ;
 scalar_t__ get_oid_with_context (int ,char const*,int ,struct object_id*,struct object_context*) ;
 int stream_blob_to_fd (int,struct object_id const*,int *,int ) ;
 int textconv_object (int ,int ,int ,struct object_id*,int,char**,unsigned long*) ;
 int the_repository ;
 int write_or_die (int,char*,unsigned long) ;

__attribute__((used)) static int show_blob_object(const struct object_id *oid, struct rev_info *rev, const char *obj_name)
{
 struct object_id oidc;
 struct object_context obj_context;
 char *buf;
 unsigned long size;

 fflush(rev->diffopt.file);
 if (!rev->diffopt.flags.textconv_set_via_cmdline ||
     !rev->diffopt.flags.allow_textconv)
  return stream_blob_to_fd(1, oid, ((void*)0), 0);

 if (get_oid_with_context(the_repository, obj_name,
     GET_OID_RECORD_PATH,
     &oidc, &obj_context))
  die(_("not a valid object name %s"), obj_name);
 if (!obj_context.path ||
     !textconv_object(the_repository, obj_context.path,
        obj_context.mode, &oidc, 1, &buf, &size)) {
  free(obj_context.path);
  return stream_blob_to_fd(1, oid, ((void*)0), 0);
 }

 if (!buf)
  die(_("git show %s: bad file"), obj_name);

 write_or_die(1, buf, size);
 free(obj_context.path);
 return 0;
}
