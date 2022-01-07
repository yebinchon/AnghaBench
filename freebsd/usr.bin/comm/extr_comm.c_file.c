
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*,char const*) ;
 int * fopen (char const*,char*) ;
 int * stdin ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static FILE *
file(const char *name)
{
 FILE *fp;

 if (!strcmp(name, "-"))
  return (stdin);
 if ((fp = fopen(name, "r")) == ((void*)0)) {
  err(1, "%s", name);
 }
 return (fp);
}
