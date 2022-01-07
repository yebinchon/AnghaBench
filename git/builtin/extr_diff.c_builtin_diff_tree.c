
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int diffopt; } ;
struct object_id {int dummy; } ;
struct object_array_entry {TYPE_1__* item; } ;
struct TYPE_2__ {int flags; struct object_id oid; } ;


 int UNINTERESTING ;
 int builtin_diff_usage ;
 int diff_tree_oid (struct object_id const*,struct object_id const*,char*,int *) ;
 int log_tree_diff_flush (struct rev_info*) ;
 int usage (int ) ;

__attribute__((used)) static int builtin_diff_tree(struct rev_info *revs,
        int argc, const char **argv,
        struct object_array_entry *ent0,
        struct object_array_entry *ent1)
{
 const struct object_id *(oid[2]);
 int swap = 0;

 if (argc > 1)
  usage(builtin_diff_usage);





 if (ent1->item->flags & UNINTERESTING)
  swap = 1;
 oid[swap] = &ent0->item->oid;
 oid[1 - swap] = &ent1->item->oid;
 diff_tree_oid(oid[0], oid[1], "", &revs->diffopt);
 log_tree_diff_flush(revs);
 return 0;
}
