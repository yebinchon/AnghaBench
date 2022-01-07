
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int dense_combined_merges; int combine_merges; } ;
struct oid_array {int dummy; } ;
struct object_array_entry {TYPE_1__* item; } ;
struct TYPE_2__ {int oid; } ;


 struct oid_array OID_ARRAY_INIT ;
 int builtin_diff_usage ;
 int diff_tree_combined (int *,struct oid_array*,int,struct rev_info*) ;
 int oid_array_append (struct oid_array*,int *) ;
 int oid_array_clear (struct oid_array*) ;
 int usage (int ) ;

__attribute__((used)) static int builtin_diff_combined(struct rev_info *revs,
     int argc, const char **argv,
     struct object_array_entry *ent,
     int ents)
{
 struct oid_array parents = OID_ARRAY_INIT;
 int i;

 if (argc > 1)
  usage(builtin_diff_usage);

 if (!revs->dense_combined_merges && !revs->combine_merges)
  revs->dense_combined_merges = revs->combine_merges = 1;
 for (i = 1; i < ents; i++)
  oid_array_append(&parents, &ent[i].item->oid);
 diff_tree_combined(&ent[0].item->oid, &parents,
      revs->dense_combined_merges, revs);
 oid_array_clear(&parents);
 return 0;
}
