
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int add_pending_object (struct rev_info*,TYPE_1__*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 int the_repository ;

__attribute__((used)) static int add_pending_commit(const char *arg, struct rev_info *revs, int flags)
{
 struct object_id oid;
 if (get_oid(arg, &oid) == 0) {
  struct commit *commit = lookup_commit_reference(the_repository,
        &oid);
  if (commit) {
   commit->object.flags |= flags;
   add_pending_object(revs, &commit->object, arg);
   return 0;
  }
 }
 return -1;
}
