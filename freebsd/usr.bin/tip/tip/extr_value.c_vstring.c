
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v_type; } ;
typedef TYPE_1__ value_t ;


 int NUMBER ;
 scalar_t__ atoi (char*) ;
 char* expand (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int vassign (TYPE_1__*,char*) ;
 TYPE_1__* vlookup (char*) ;

int
vstring(char *s, char *v)
{
 value_t *p;

 p = vlookup(s);
 if (p == 0)
  return (1);
 if (p->v_type&NUMBER)
  vassign(p, (char *)(intptr_t)atoi(v));
 else {
  if (strcmp(s, "record") == 0)
   v = expand(v);
  vassign(p, v);
 }
 return (0);
}
