
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_COMMIT ;
 int die (char*,int ,...) ;
 void* get_cached_commit_buffer (struct repository*,struct commit const*,unsigned long*) ;
 int oid_to_hex (int *) ;
 void* repo_read_object_file (struct repository*,int *,int*,unsigned long*) ;
 int type_name (int) ;

const void *repo_get_commit_buffer(struct repository *r,
       const struct commit *commit,
       unsigned long *sizep)
{
 const void *ret = get_cached_commit_buffer(r, commit, sizep);
 if (!ret) {
  enum object_type type;
  unsigned long size;
  ret = repo_read_object_file(r, &commit->object.oid, &type, &size);
  if (!ret)
   die("cannot read commit object %s",
       oid_to_hex(&commit->object.oid));
  if (type != OBJ_COMMIT)
   die("expected commit for %s, got %s",
       oid_to_hex(&commit->object.oid), type_name(type));
  if (sizep)
   *sizep = size;
 }
 return ret;
}
