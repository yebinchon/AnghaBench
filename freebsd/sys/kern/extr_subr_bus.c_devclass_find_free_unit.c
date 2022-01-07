
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* devclass_t ;
struct TYPE_3__ {int maxunit; int ** devices; } ;



int
devclass_find_free_unit(devclass_t dc, int unit)
{
 if (dc == ((void*)0))
  return (unit);
 while (unit < dc->maxunit && dc->devices[unit] != ((void*)0))
  unit++;
 return (unit);
}
