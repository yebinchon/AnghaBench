
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct commit {int dummy; } ;


 int repo_parse_commit_internal (struct repository*,struct commit*,int,int) ;

int repo_parse_commit_gently(struct repository *r,
        struct commit *item, int quiet_on_missing)
{
 return repo_parse_commit_internal(r, item, quiet_on_missing, 1);
}
