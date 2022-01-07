
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {char* name; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 int null_oid ;
 int printf (char*,char*) ;
 struct submodule* submodule_from_path (int ,int *,char const*) ;
 int the_repository ;
 int usage (int ) ;

__attribute__((used)) static int module_name(int argc, const char **argv, const char *prefix)
{
 const struct submodule *sub;

 if (argc != 2)
  usage(_("git submodule--helper name <path>"));

 sub = submodule_from_path(the_repository, &null_oid, argv[1]);

 if (!sub)
  die(_("no submodule mapping found in .gitmodules for path '%s'"),
      argv[1]);

 printf("%s\n", sub->name);

 return 0;
}
