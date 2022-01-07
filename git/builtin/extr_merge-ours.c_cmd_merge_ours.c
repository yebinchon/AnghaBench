
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int builtin_merge_ours_usage ;
 int die_errno (char*) ;
 int exit (int) ;
 scalar_t__ index_differs_from (int ,char*,int *,int ) ;
 scalar_t__ read_cache () ;
 int strcmp (char const*,char*) ;
 int the_repository ;
 int usage (int ) ;

int cmd_merge_ours(int argc, const char **argv, const char *prefix)
{
 if (argc == 2 && !strcmp(argv[1], "-h"))
  usage(builtin_merge_ours_usage);






 if (read_cache() < 0)
  die_errno("read_cache failed");
 if (index_differs_from(the_repository, "HEAD", ((void*)0), 0))
  exit(2);
 exit(0);
}
