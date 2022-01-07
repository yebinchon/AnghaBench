
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct commit {int dummy; } ;


 int repo_in_merge_bases_many (struct repository*,struct commit*,int,struct commit**) ;

int repo_in_merge_bases(struct repository *r,
   struct commit *commit,
   struct commit *reference)
{
 return repo_in_merge_bases_many(r, commit, 1, &reference);
}
