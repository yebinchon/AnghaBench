
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;


 struct commit_list* xmalloc (int) ;

struct commit_list **commit_list_append(struct commit *commit,
     struct commit_list **next)
{
 struct commit_list *new_commit = xmalloc(sizeof(struct commit_list));
 new_commit->item = commit;
 *next = new_commit;
 new_commit->next = ((void*)0);
 return &new_commit->next;
}
