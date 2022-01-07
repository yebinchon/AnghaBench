
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addarg (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
addlib(const char *lib)
{

 if (strcmp(lib, "pthread") == 0)

  addarg("-pthread");
 else if (strcmp(lib, "rt") == 0)

  ;
 else if (strcmp(lib, "xnet") == 0)

  ;
 else {
  addarg("-l");
  addarg(lib);
 }
}
