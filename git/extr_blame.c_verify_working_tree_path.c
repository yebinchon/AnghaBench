
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct repository {TYPE_4__* index; } ;
struct object_id {int dummy; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_8__ {int cache_nr; TYPE_3__** cache; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_5__ {struct object_id oid; } ;
struct TYPE_6__ {TYPE_1__ object; } ;


 scalar_t__ OBJ_BLOB ;
 int die (char*,char const*) ;
 int get_tree_entry (struct repository*,struct object_id const*,char const*,struct object_id*,unsigned short*) ;
 int index_name_pos (TYPE_4__*,char const*,int ) ;
 scalar_t__ oid_object_info (struct repository*,struct object_id*,int *) ;
 int strcmp (int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void verify_working_tree_path(struct repository *r,
         struct commit *work_tree, const char *path)
{
 struct commit_list *parents;
 int pos;

 for (parents = work_tree->parents; parents; parents = parents->next) {
  const struct object_id *commit_oid = &parents->item->object.oid;
  struct object_id blob_oid;
  unsigned short mode;

  if (!get_tree_entry(r, commit_oid, path, &blob_oid, &mode) &&
      oid_object_info(r, &blob_oid, ((void*)0)) == OBJ_BLOB)
   return;
 }

 pos = index_name_pos(r->index, path, strlen(path));
 if (pos >= 0)
  ;
 else if (-1 - pos < r->index->cache_nr &&
   !strcmp(r->index->cache[-1 - pos]->name, path))
  ;
 else
  die("no such path '%s' in HEAD", path);
}
