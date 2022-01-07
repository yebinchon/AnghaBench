
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_link {scalar_t__ dir; int ext; } ;


 scalar_t__ SRC_TREE ;
 char* link_target (int *,char const*,int ) ;
 int * objtree ;
 int * srctree ;
 int strlen (int *) ;
 scalar_t__ strncmp (char const*,int *,int) ;

__attribute__((used)) static char *
get_link_target(const char *filename, const struct gcov_link *ext)
{
 const char *rel;
 char *result;

 if (strncmp(filename, objtree, strlen(objtree)) == 0) {
  rel = filename + strlen(objtree) + 1;
  if (ext->dir == SRC_TREE)
   result = link_target(srctree, rel, ext->ext);
  else
   result = link_target(objtree, rel, ext->ext);
 } else {

  result = link_target(((void*)0), filename, ext->ext);
 }

 return (result);
}
