
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (int ) ;
 int cmd_log_reflog (int,char const**,char const*) ;
 int cmd_reflog_delete (int,char const**,char const*) ;
 int cmd_reflog_exists (int,char const**,char const*) ;
 int cmd_reflog_expire (int,char const**,char const*) ;
 int reflog_usage ;
 int strcmp (char const*,char*) ;
 int usage (int ) ;

int cmd_reflog(int argc, const char **argv, const char *prefix)
{
 if (argc > 1 && !strcmp(argv[1], "-h"))
  usage(_(reflog_usage));


 if (argc < 2 || *argv[1] == '-')
  return cmd_log_reflog(argc, argv, prefix);

 if (!strcmp(argv[1], "show"))
  return cmd_log_reflog(argc - 1, argv + 1, prefix);

 if (!strcmp(argv[1], "expire"))
  return cmd_reflog_expire(argc - 1, argv + 1, prefix);

 if (!strcmp(argv[1], "delete"))
  return cmd_reflog_delete(argc - 1, argv + 1, prefix);

 if (!strcmp(argv[1], "exists"))
  return cmd_reflog_exists(argc - 1, argv + 1, prefix);

 return cmd_log_reflog(argc, argv, prefix);
}
