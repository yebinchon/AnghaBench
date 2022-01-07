
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 int clear_commit_marks_1 (struct commit_list**,struct commit*,unsigned int) ;
 struct commit* pop_commit (struct commit_list**) ;

void clear_commit_marks_many(int nr, struct commit **commit, unsigned int mark)
{
 struct commit_list *list = ((void*)0);

 while (nr--) {
  clear_commit_marks_1(&list, *commit, mark);
  commit++;
 }
 while (list)
  clear_commit_marks_1(&list, pop_commit(&list), mark);
}
