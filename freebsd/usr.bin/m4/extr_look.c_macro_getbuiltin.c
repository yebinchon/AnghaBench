
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ndptr ;
struct TYPE_4__ {scalar_t__ builtin_type; } ;


 scalar_t__ MACRTYPE ;
 TYPE_1__* lookup (char const*) ;

ndptr
macro_getbuiltin(const char *name)
{
 ndptr p;

 p = lookup(name);
 if (p == ((void*)0) || p->builtin_type == MACRTYPE)
  return ((void*)0);
 else
  return p;
}
