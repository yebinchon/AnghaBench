
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t sl_cur; int * sl_str; } ;
typedef TYPE_1__ StringList ;


 size_t PROTOMAX ;
 int err (int,char*) ;
 int errx (int,char*,char const*) ;
 int sl_add (TYPE_1__*,char*) ;
 scalar_t__ strcmp (int ,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static size_t
getprotoindex(StringList *sl, const char *str)
{
 size_t i;
 char *p;

 for (i= 0; i < sl->sl_cur; i++)
  if (strcmp(sl->sl_str[i], str) == 0)
   return i;

 if (i == PROTOMAX)
  errx(1, "Ran out of protocols adding `%s';"
      " recompile with larger PROTOMAX", str);
 if ((p = strdup(str)) == ((void*)0))
  err(1, "Cannot copy string");
 (void)sl_add(sl, p);
 return i;
}
