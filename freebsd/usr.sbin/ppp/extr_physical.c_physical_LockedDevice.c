
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* full; char const* base; } ;
struct physical {scalar_t__ fd; scalar_t__ type; TYPE_1__ name; } ;


 scalar_t__ PHYS_DIRECT ;

const char *
physical_LockedDevice(struct physical *p)
{
  if (p->fd >= 0 && *p->name.full == '/' && p->type != PHYS_DIRECT)
    return p->name.base;

  return ((void*)0);
}
