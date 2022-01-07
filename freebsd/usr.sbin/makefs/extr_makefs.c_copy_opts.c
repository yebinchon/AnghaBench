
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ name; } ;
typedef TYPE_1__ option_t ;


 int ecalloc (size_t,int) ;
 TYPE_1__* memcpy (int ,TYPE_1__ const*,size_t) ;

option_t *
copy_opts(const option_t *o)
{
 size_t i;

 for (i = 0; o[i].name; i++)
  continue;
 i++;
 return memcpy(ecalloc(i, sizeof(*o)), o, i * sizeof(*o));
}
