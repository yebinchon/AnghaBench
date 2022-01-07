
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int printf (char*,char*,char const*) ;
 int remove_merge_branch_state (int ) ;
 scalar_t__ squash ;
 int the_repository ;
 scalar_t__ verbosity ;

__attribute__((used)) static void finish_up_to_date(const char *msg)
{
 if (verbosity >= 0)
  printf("%s%s\n", squash ? _(" (nothing to squash)") : "", msg);
 remove_merge_branch_state(the_repository);
}
