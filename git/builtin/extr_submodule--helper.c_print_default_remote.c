
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ) ;
 int free (char*) ;
 char* get_default_remote () ;
 int printf (char*,char*) ;

__attribute__((used)) static int print_default_remote(int argc, const char **argv, const char *prefix)
{
 char *remote;

 if (argc != 1)
  die(_("submodule--helper print-default-remote takes no arguments"));

 remote = get_default_remote();
 if (remote)
  printf("%s\n", remote);

 free(remote);
 return 0;
}
