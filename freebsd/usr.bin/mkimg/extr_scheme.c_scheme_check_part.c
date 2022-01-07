
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct part {int * label; int type; int alias; } ;
struct mkimg_alias {int alias; int type; } ;
typedef enum alias { ____Placeholder_alias } alias ;
struct TYPE_2__ {scalar_t__ labellen; struct mkimg_alias* aliases; } ;


 int ALIAS_NONE ;
 int EINVAL ;
 int assert (int ) ;
 TYPE_1__* scheme ;
 int scheme_parse_alias (int ) ;
 scalar_t__ strlen (int *) ;

int
scheme_check_part(struct part *p)
{
 struct mkimg_alias *iter;
 enum alias alias;

 assert(scheme != ((void*)0));


 alias = scheme_parse_alias(p->alias);
 if (alias == ALIAS_NONE)
  return (EINVAL);

 iter = scheme->aliases;
 while (iter->alias != ALIAS_NONE) {
  if (alias == iter->alias)
   break;
  iter++;
 }
 if (iter->alias == ALIAS_NONE)
  return (EINVAL);
 p->type = iter->type;


 if (p->label != ((void*)0)) {
  if (strlen(p->label) > scheme->labellen)
   return (EINVAL);
 }

 return (0);
}
