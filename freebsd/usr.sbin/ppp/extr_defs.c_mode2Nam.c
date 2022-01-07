
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; char const* name; } ;


 TYPE_1__* modes ;

const char *
mode2Nam(int mode)
{
  int m;

  for (m = 0; modes[m].mode; m++)
    if (modes[m].mode == mode)
      return modes[m].name;

  return "unknown";
}
