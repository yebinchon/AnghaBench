
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {int nr; TYPE_1__* items; } ;
struct path_pattern {int dummy; } ;
struct dir_struct {int dummy; } ;
struct TYPE_2__ {char* match; int original; } ;


 int DT_UNKNOWN ;
 int PATHSPEC_ALL_MAGIC ;
 int PATHSPEC_FROMTOP ;
 int PATHSPEC_KEEP_ORDER ;
 int PATHSPEC_SYMLINK_LEADING_PATH ;
 int die_path_inside_submodule (int *,struct pathspec*) ;
 char* find_pathspecs_matching_against_index (struct pathspec*,int *) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 struct path_pattern* last_matching_pattern (struct dir_struct*,int *,char const*,int*) ;
 int output_pattern (int ,struct path_pattern*) ;
 int parse_pathspec (struct pathspec*,int,int,char const*,char const**) ;
 int quiet ;
 scalar_t__ show_non_matching ;
 int stderr ;
 int the_index ;

__attribute__((used)) static int check_ignore(struct dir_struct *dir,
   const char *prefix, int argc, const char **argv)
{
 const char *full_path;
 char *seen;
 int num_ignored = 0, i;
 struct path_pattern *pattern;
 struct pathspec pathspec;

 if (!argc) {
  if (!quiet)
   fprintf(stderr, "no pathspec given.\n");
  return 0;
 }





 parse_pathspec(&pathspec,
         PATHSPEC_ALL_MAGIC & ~PATHSPEC_FROMTOP,
         PATHSPEC_SYMLINK_LEADING_PATH |
         PATHSPEC_KEEP_ORDER,
         prefix, argv);

 die_path_inside_submodule(&the_index, &pathspec);






 seen = find_pathspecs_matching_against_index(&pathspec, &the_index);
 for (i = 0; i < pathspec.nr; i++) {
  full_path = pathspec.items[i].match;
  pattern = ((void*)0);
  if (!seen[i]) {
   int dtype = DT_UNKNOWN;
   pattern = last_matching_pattern(dir, &the_index,
       full_path, &dtype);
  }
  if (!quiet && (pattern || show_non_matching))
   output_pattern(pathspec.items[i].original, pattern);
  if (pattern)
   num_ignored++;
 }
 free(seen);

 return num_ignored;
}
