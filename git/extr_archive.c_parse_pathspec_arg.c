
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recursive; } ;
struct archiver_args {TYPE_1__ pathspec; } ;


 int PATHSPEC_PREFER_FULL ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int parse_pathspec (TYPE_1__*,int ,int ,char*,char const**) ;
 int path_exists (struct archiver_args*,char const*) ;

__attribute__((used)) static void parse_pathspec_arg(const char **pathspec,
  struct archiver_args *ar_args)
{





 parse_pathspec(&ar_args->pathspec, 0,
         PATHSPEC_PREFER_FULL,
         "", pathspec);
 ar_args->pathspec.recursive = 1;
 if (pathspec) {
  while (*pathspec) {
   if (**pathspec && !path_exists(ar_args, *pathspec))
    die(_("pathspec '%s' did not match any files"), *pathspec);
   pathspec++;
  }
 }
}
