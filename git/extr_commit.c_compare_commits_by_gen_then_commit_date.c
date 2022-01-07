
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {scalar_t__ generation; scalar_t__ date; } ;



int compare_commits_by_gen_then_commit_date(const void *a_, const void *b_, void *unused)
{
 const struct commit *a = a_, *b = b_;


 if (a->generation < b->generation)
  return 1;
 else if (a->generation > b->generation)
  return -1;


 if (a->date < b->date)
  return 1;
 else if (a->date > b->date)
  return -1;
 return 0;
}
