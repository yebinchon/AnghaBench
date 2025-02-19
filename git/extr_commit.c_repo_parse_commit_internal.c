
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct TYPE_2__ {int oid; scalar_t__ parsed; } ;
struct commit {TYPE_1__ object; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_COMMIT ;
 int error (char*,int ) ;
 int free (void*) ;
 int oid_to_hex (int *) ;
 int parse_commit_buffer (struct repository*,struct commit*,void*,unsigned long,int ) ;
 scalar_t__ parse_commit_in_graph (struct repository*,struct commit*) ;
 void* repo_read_object_file (struct repository*,int *,int*,unsigned long*) ;
 scalar_t__ save_commit_buffer ;
 int set_commit_buffer (struct repository*,struct commit*,void*,unsigned long) ;

int repo_parse_commit_internal(struct repository *r,
          struct commit *item,
          int quiet_on_missing,
          int use_commit_graph)
{
 enum object_type type;
 void *buffer;
 unsigned long size;
 int ret;

 if (!item)
  return -1;
 if (item->object.parsed)
  return 0;
 if (use_commit_graph && parse_commit_in_graph(r, item))
  return 0;
 buffer = repo_read_object_file(r, &item->object.oid, &type, &size);
 if (!buffer)
  return quiet_on_missing ? -1 :
   error("Could not read %s",
        oid_to_hex(&item->object.oid));
 if (type != OBJ_COMMIT) {
  free(buffer);
  return error("Object %s not a commit",
        oid_to_hex(&item->object.oid));
 }

 ret = parse_commit_buffer(r, item, buffer, size, 0);
 if (save_commit_buffer && !ret) {
  set_commit_buffer(r, item, buffer, size);
  return 0;
 }
 free(buffer);
 return ret;
}
