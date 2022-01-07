
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* full; } ;
struct physical {TYPE_1__ name; } ;



const char *physical_GetDevice(struct physical *p)
{
   return p->name.full;
}
