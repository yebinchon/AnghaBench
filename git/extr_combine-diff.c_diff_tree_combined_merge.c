
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rev_info {int dummy; } ;
struct oid_array {int dummy; } ;
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct TYPE_6__ {int oid; } ;
struct commit {TYPE_3__ object; } ;
struct TYPE_4__ {int oid; } ;
struct TYPE_5__ {TYPE_1__ object; } ;


 struct oid_array OID_ARRAY_INIT ;
 int diff_tree_combined (int *,struct oid_array*,int,struct rev_info*) ;
 struct commit_list* get_saved_parents (struct rev_info*,struct commit const*) ;
 int oid_array_append (struct oid_array*,int *) ;
 int oid_array_clear (struct oid_array*) ;

void diff_tree_combined_merge(const struct commit *commit, int dense,
         struct rev_info *rev)
{
 struct commit_list *parent = get_saved_parents(rev, commit);
 struct oid_array parents = OID_ARRAY_INIT;

 while (parent) {
  oid_array_append(&parents, &parent->item->object.oid);
  parent = parent->next;
 }
 diff_tree_combined(&commit->object.oid, &parents, dense, rev);
 oid_array_clear(&parents);
}
