
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * acu_name; } ;
typedef TYPE_1__ acu_t ;


 TYPE_1__* NOACU ;
 int strcmp (char*,int *) ;

__attribute__((used)) static acu_t *
acutype(char *s)
{
 acu_t *p;
 extern acu_t acutable[];

 for (p = acutable; p->acu_name != ((void*)0); p++)
  if (!strcmp(s, p->acu_name))
   return (p);
 return (NOACU);
}
