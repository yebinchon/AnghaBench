
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_name {scalar_t__ generation; int head_name; } ;
struct commit {int dummy; } ;


 struct commit_name* commit_to_name (struct commit*) ;
 int name_commit (struct commit*,int ,scalar_t__) ;

__attribute__((used)) static void name_parent(struct commit *commit, struct commit *parent)
{
 struct commit_name *commit_name = commit_to_name(commit);
 struct commit_name *parent_name = commit_to_name(parent);
 if (!commit_name)
  return;
 if (!parent_name ||
     commit_name->generation + 1 < parent_name->generation)
  name_commit(parent, commit_name->head_name,
       commit_name->generation + 1);
}
