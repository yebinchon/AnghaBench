
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {struct commit_list* next; } ;


 TYPE_1__* commit_list_insert (struct commit*,struct commit_list**) ;
 int die (char*,int ) ;
 struct commit* lookup_commit_reference (struct repository*,struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;

__attribute__((used)) static struct commit_list **append_parent(struct repository *r,
       struct commit_list **tail,
       const struct object_id *oid)
{
 struct commit *parent;

 parent = lookup_commit_reference(r, oid);
 if (!parent)
  die("no such commit %s", oid_to_hex(oid));
 return &commit_list_insert(parent, tail)->next;
}
