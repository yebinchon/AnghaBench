
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; char const* name; } ;


 size_t NLCINFO ;
 TYPE_1__* lcinfo ;

const char *
lookup_localecat(int cat)
{
 size_t i;

 for (i = 0; i < NLCINFO; i++)
  if (lcinfo[i].id == cat) {
   return (lcinfo[i].name);
  }
 return ("UNKNOWN");
}
