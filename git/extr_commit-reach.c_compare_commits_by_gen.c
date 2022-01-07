
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {scalar_t__ generation; } ;



__attribute__((used)) static int compare_commits_by_gen(const void *_a, const void *_b)
{
 const struct commit *a = *(const struct commit * const *)_a;
 const struct commit *b = *(const struct commit * const *)_b;

 if (a->generation < b->generation)
  return -1;
 if (a->generation > b->generation)
  return 1;
 return 0;
}
