
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ARGEXT ;
 char* locase (char const*) ;
 int sprintf (char*,char*,char*,char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

char *
make_argname(const char *pname, const char *vname)
{
 char *name;

 name = xmalloc(strlen(pname) + strlen(vname) + strlen(ARGEXT) + 3);
 sprintf(name, "%s_%s_%s", locase(pname), vname, ARGEXT);
 return (name);
}
