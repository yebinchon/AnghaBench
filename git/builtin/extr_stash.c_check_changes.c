
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct pathspec {int dummy; } ;


 scalar_t__ check_changes_tracked_files (struct pathspec const*) ;
 scalar_t__ get_untracked_files (struct pathspec const*,int,struct strbuf*) ;

__attribute__((used)) static int check_changes(const struct pathspec *ps, int include_untracked,
    struct strbuf *untracked_files)
{
 int ret = 0;
 if (check_changes_tracked_files(ps))
  ret = 1;

 if (include_untracked && get_untracked_files(ps, include_untracked,
           untracked_files))
  ret = 1;

 return ret;
}
