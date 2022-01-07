
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_name {int dummy; } ;
struct commit {int dummy; } ;


 struct rev_name** commit_rev_name_peek (int *,struct commit*) ;
 int rev_names ;

__attribute__((used)) static struct rev_name *get_commit_rev_name(struct commit *commit)
{
 struct rev_name **slot = commit_rev_name_peek(&rev_names, commit);

 return slot ? *slot : ((void*)0);
}
