
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ v_abrev; scalar_t__ v_name; } ;
typedef TYPE_1__ value_t ;


 scalar_t__ equal (scalar_t__,char*) ;
 TYPE_1__* vtable ;

__attribute__((used)) static value_t *
vlookup(char *s)
{
 value_t *p;

 for (p = vtable; p->v_name; p++)
  if (equal(p->v_name, s) || (p->v_abrev && equal(p->v_abrev, s)))
   return (p);
 return (((void*)0));
}
