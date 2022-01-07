
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 int commit_list_count (struct commit_list*) ;
 struct commit_list* first_scapegoat (struct rev_info*,struct commit*,int) ;

__attribute__((used)) static int num_scapegoats(struct rev_info *revs, struct commit *commit, int reverse)
{
 struct commit_list *l = first_scapegoat(revs, commit, reverse);
 return commit_list_count(l);
}
