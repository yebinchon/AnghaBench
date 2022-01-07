
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int path ;
struct TYPE_2__ {size_t sl_cur; char** sl_str; } ;
typedef int FILE ;


 int PATH_MAX ;
 int * fopen (char const*,char*) ;
 TYPE_1__* includes ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int * stdin ;
 scalar_t__ strcmp (char const*,char*) ;
 int warn (char*,char const*) ;

__attribute__((used)) static FILE *
soelim_fopen(const char *name)
{
 FILE *f;
 char path[PATH_MAX];
 size_t i;

 if (strcmp(name, "-") == 0)
  return (stdin);

 if ((f = fopen(name, "r")) != ((void*)0))
  return (f);

 if (*name == '/') {
  warn("can't open '%s'", name);
  return (((void*)0));
 }

 for (i = 0; i < includes->sl_cur; i++) {
  snprintf(path, sizeof(path), "%s/%s", includes->sl_str[i],
      name);
  if ((f = fopen(path, "r")) != ((void*)0))
   return (f);
 }

 warn("can't open '%s'", name);

 return (f);
}
