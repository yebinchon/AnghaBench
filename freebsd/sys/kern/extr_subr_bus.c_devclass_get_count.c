
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* devclass_t ;
struct TYPE_3__ {int maxunit; scalar_t__* devices; } ;



int
devclass_get_count(devclass_t dc)
{
 int count, i;

 count = 0;
 for (i = 0; i < dc->maxunit; i++)
  if (dc->devices[i])
   count++;
 return (count);
}
