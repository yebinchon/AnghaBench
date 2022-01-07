
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ bit; char const* name; } ;


 TYPE_1__* flags ;
 int nitems (TYPE_1__*) ;

__attribute__((used)) static const char *
getflagname(u_int flag)
{
 int i;

 for (i = 0; i < nitems(flags); i++)
  if (flags[i].bit == flag)
   return flags[i].name;
 return "???";
}
