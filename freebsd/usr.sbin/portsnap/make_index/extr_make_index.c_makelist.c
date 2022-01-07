
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; } ;
typedef TYPE_1__ DEP ;


 int err (int,char*) ;
 TYPE_1__* malloc (size_t) ;
 char* strdup2 (int ) ;
 int strlen (char*) ;
 int strsep (char**,char*) ;

__attribute__((used)) static DEP *
makelist(char * str, size_t * n)
{
 DEP * d;
 size_t i;


 if (str[0] == 0) {
  *n = 0;
  return ((void*)0);
 }


 *n = 1;
 for (i = 0; str[i] != 0; i++)
  if (str[i] == ' ')
   (*n)++;


 d = malloc(*n * sizeof(DEP));
 if (d == ((void*)0))
  err(1, "malloc(DEP)");
 for (i = 0; i < *n; i++) {
  d[i].name = strdup2(strsep(&str, " "));


  if (d[i].name[strlen(d[i].name) - 1] == '/')
   d[i].name[strlen(d[i].name) - 1] = 0;
 }

 return d;
}
