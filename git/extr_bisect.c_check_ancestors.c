
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int * commits; } ;
struct repository {int dummy; } ;
struct commit {int dummy; } ;


 int ALL_REV_FLAGS ;
 int bisect_common (struct rev_info*) ;
 int bisect_rev_setup (struct repository*,struct rev_info*,char const*,char*,char*,int ) ;
 int clear_commit_marks_many (int,struct commit**,int ) ;

__attribute__((used)) static int check_ancestors(struct repository *r, int rev_nr,
      struct commit **rev, const char *prefix)
{
 struct rev_info revs;
 int res;

 bisect_rev_setup(r, &revs, prefix, "^%s", "%s", 0);

 bisect_common(&revs);
 res = (revs.commits != ((void*)0));


 clear_commit_marks_many(rev_nr, rev, ALL_REV_FLAGS);

 return res;
}
