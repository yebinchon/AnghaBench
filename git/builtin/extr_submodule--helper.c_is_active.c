
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 int is_submodule_active (int ,char const*) ;
 int the_repository ;

__attribute__((used)) static int is_active(int argc, const char **argv, const char *prefix)
{
 if (argc != 2)
  die("submodule--helper is-active takes exactly 1 argument");

 return !is_submodule_active(the_repository, argv[1]);
}
