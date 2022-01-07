
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;


 int clear_commit_marks_many (int,struct commit**,unsigned int) ;

void clear_commit_marks(struct commit *commit, unsigned int mark)
{
 clear_commit_marks_many(1, &commit, mark);
}
