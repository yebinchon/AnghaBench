
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int children; scalar_t__ first_parent_only; } ;
struct commit_list {int * next; } ;
struct commit {int object; struct commit_list* parents; } ;


 int free_commit_list (int *) ;
 struct commit_list* lookup_decoration (int *,int *) ;

__attribute__((used)) static struct commit_list *first_scapegoat(struct rev_info *revs, struct commit *commit,
     int reverse)
{
 if (!reverse) {
  if (revs->first_parent_only &&
      commit->parents &&
      commit->parents->next) {
   free_commit_list(commit->parents->next);
   commit->parents->next = ((void*)0);
  }
  return commit->parents;
 }
 return lookup_decoration(&revs->children, &commit->object);
}
