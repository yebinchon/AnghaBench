
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_path_bisect_ancestors_ok () ;
 int git_path_bisect_expected_rev () ;
 int is_expected_rev (char const*) ;
 int unlink_or_warn (int ) ;

__attribute__((used)) static void check_expected_revs(const char **revs, int rev_nr)
{
 int i;

 for (i = 0; i < rev_nr; i++) {
  if (!is_expected_rev(revs[i])) {
   unlink_or_warn(git_path_bisect_ancestors_ok());
   unlink_or_warn(git_path_bisect_expected_rev());
  }
 }
}
