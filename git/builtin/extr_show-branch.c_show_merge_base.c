
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {int dummy; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {TYPE_1__ object; } ;


 int REV_SHIFT ;
 int UNINTERESTING ;
 int oid_to_hex (int *) ;
 struct commit* pop_commit (struct commit_list**) ;
 int puts (int ) ;

__attribute__((used)) static int show_merge_base(struct commit_list *seen, int num_rev)
{
 int all_mask = ((1u << (REV_SHIFT + num_rev)) - 1);
 int all_revs = all_mask & ~((1u << REV_SHIFT) - 1);
 int exit_status = 1;

 while (seen) {
  struct commit *commit = pop_commit(&seen);
  int flags = commit->object.flags & all_mask;
  if (!(flags & UNINTERESTING) &&
      ((flags & all_revs) == all_revs)) {
   puts(oid_to_hex(&commit->object.oid));
   exit_status = 0;
   commit->object.flags |= UNINTERESTING;
  }
 }
 return exit_status;
}
