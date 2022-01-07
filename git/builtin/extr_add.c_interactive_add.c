
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;


 int PATHSPEC_PREFER_FULL ;
 int PATHSPEC_PREFIX_ORIGIN ;
 int PATHSPEC_SYMLINK_LEADING_PATH ;
 int parse_pathspec (struct pathspec*,int ,int,char const*,char const**) ;
 int run_add_interactive (int *,char*,struct pathspec*) ;

int interactive_add(int argc, const char **argv, const char *prefix, int patch)
{
 struct pathspec pathspec;

 parse_pathspec(&pathspec, 0,
         PATHSPEC_PREFER_FULL |
         PATHSPEC_SYMLINK_LEADING_PATH |
         PATHSPEC_PREFIX_ORIGIN,
         prefix, argv);

 return run_add_interactive(((void*)0),
       patch ? "--patch" : ((void*)0),
       &pathspec);
}
