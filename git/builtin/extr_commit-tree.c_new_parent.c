
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {struct object_id oid; } ;
struct commit {TYPE_1__ object; } ;


 int _ (char*) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 int error (int ,int ) ;
 int oid_to_hex (struct object_id*) ;

__attribute__((used)) static void new_parent(struct commit *parent, struct commit_list **parents_p)
{
 struct object_id *oid = &parent->object.oid;
 struct commit_list *parents;
 for (parents = *parents_p; parents; parents = parents->next) {
  if (parents->item == parent) {
   error(_("duplicate parent %s ignored"), oid_to_hex(oid));
   return;
  }
  parents_p = &parents->next;
 }
 commit_list_insert(parent, parents_p);
}
