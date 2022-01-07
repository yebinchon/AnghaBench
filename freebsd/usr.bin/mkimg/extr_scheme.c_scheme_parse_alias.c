
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
typedef enum alias { ____Placeholder_alias } alias ;
struct TYPE_2__ {int alias; int * name; } ;


 int ALIAS_NONE ;
 TYPE_1__* scheme_alias ;
 scalar_t__ strcasecmp (int *,char const*) ;

__attribute__((used)) static enum alias
scheme_parse_alias(const char *name)
{
 u_int idx;

 idx = 0;
 while (scheme_alias[idx].name != ((void*)0)) {
  if (strcasecmp(scheme_alias[idx].name, name) == 0)
   return (scheme_alias[idx].alias);
  idx++;
 }
 return (ALIAS_NONE);
}
