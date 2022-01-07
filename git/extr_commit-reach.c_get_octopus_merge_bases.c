
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {struct commit_list* next; int item; } ;


 int commit_list_insert (int ,struct commit_list**) ;
 struct commit_list* get_merge_bases (int ,int ) ;

struct commit_list *get_octopus_merge_bases(struct commit_list *in)
{
 struct commit_list *i, *j, *k, *ret = ((void*)0);

 if (!in)
  return ret;

 commit_list_insert(in->item, &ret);

 for (i = in->next; i; i = i->next) {
  struct commit_list *new_commits = ((void*)0), *end = ((void*)0);

  for (j = ret; j; j = j->next) {
   struct commit_list *bases;
   bases = get_merge_bases(i->item, j->item);
   if (!new_commits)
    new_commits = bases;
   else
    end->next = bases;
   for (k = bases; k; k = k->next)
    end = k;
  }
  ret = new_commits;
 }
 return ret;
}
