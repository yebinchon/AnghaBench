
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {int dummy; } ;


 int pop_commit (struct commit_list**) ;

void free_commit_list(struct commit_list *list)
{
 while (list)
  pop_commit(&list);
}
