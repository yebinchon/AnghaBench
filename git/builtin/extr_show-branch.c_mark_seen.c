
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int commit_list_insert (struct commit*,struct commit_list**) ;

__attribute__((used)) static int mark_seen(struct commit *commit, struct commit_list **seen_p)
{
 if (!commit->object.flags) {
  commit_list_insert(commit, seen_p);
  return 1;
 }
 return 0;
}
