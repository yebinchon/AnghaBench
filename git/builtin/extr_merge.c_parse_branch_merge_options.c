
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MOVE_ARRAY (char const**,char const**,int) ;
 int REALLOC_ARRAY (char const**,int) ;
 int _ (char*) ;
 int branch ;
 int builtin_merge_options ;
 int builtin_merge_usage ;
 int die (int ,int ,int ) ;
 int free (char const**) ;
 int parse_options (int,char const**,int *,int ,int ,int ) ;
 int split_cmdline (char*,char const***) ;
 char* split_cmdline_strerror (int) ;

__attribute__((used)) static void parse_branch_merge_options(char *bmo)
{
 const char **argv;
 int argc;

 if (!bmo)
  return;
 argc = split_cmdline(bmo, &argv);
 if (argc < 0)
  die(_("Bad branch.%s.mergeoptions string: %s"), branch,
      _(split_cmdline_strerror(argc)));
 REALLOC_ARRAY(argv, argc + 2);
 MOVE_ARRAY(argv + 1, argv, argc + 1);
 argc++;
 argv[0] = "branch.*.mergeoptions";
 parse_options(argc, argv, ((void*)0), builtin_merge_options,
        builtin_merge_usage, 0);
 free(argv);
}
