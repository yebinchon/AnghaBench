
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int die (char*,...) ;
 scalar_t__ exclude_arg ;
 int exclude_existing (int ) ;
 int exclude_existing_arg ;
 int for_each_ref (int ,int *) ;
 int found_match ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int head_ref (int ,int *) ;
 int parse_options (int,char const**,char const*,int ,int ,int ) ;
 char const** pattern ;
 int quiet ;
 int read_ref (char const*,struct object_id*) ;
 scalar_t__ show_head ;
 int show_one (char const*,struct object_id*) ;
 int show_ref ;
 int show_ref_options ;
 int show_ref_usage ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;
 scalar_t__ verify ;

int cmd_show_ref(int argc, const char **argv, const char *prefix)
{
 git_config(git_default_config, ((void*)0));

 argc = parse_options(argc, argv, prefix, show_ref_options,
        show_ref_usage, 0);

 if (exclude_arg)
  return exclude_existing(exclude_existing_arg);

 pattern = argv;
 if (!*pattern)
  pattern = ((void*)0);

 if (verify) {
  if (!pattern)
   die("--verify requires a reference");
  while (*pattern) {
   struct object_id oid;

   if ((starts_with(*pattern, "refs/") || !strcmp(*pattern, "HEAD")) &&
       !read_ref(*pattern, &oid)) {
    show_one(*pattern, &oid);
   }
   else if (!quiet)
    die("'%s' - not a valid ref", *pattern);
   else
    return 1;
   pattern++;
  }
  return 0;
 }

 if (show_head)
  head_ref(show_ref, ((void*)0));
 for_each_ref(show_ref, ((void*)0));
 if (!found_match) {
  if (verify && !quiet)
   die("No match");
  return 1;
 }
 return 0;
}
