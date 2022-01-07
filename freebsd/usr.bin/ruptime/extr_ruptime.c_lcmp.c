
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* wd_loadav; } ;
struct TYPE_5__ {TYPE_1__ hs_wd; } ;


 TYPE_2__* HS (void const*) ;
 scalar_t__ ISDOWN (TYPE_2__*) ;
 int rflg ;
 int tcmp (void const*,void const*) ;

__attribute__((used)) static int
lcmp(const void *a1, const void *a2)
{
 if (ISDOWN(HS(a1)))
  if (ISDOWN(HS(a2)))
   return (tcmp(a1, a2));
  else
   return (rflg);
 else if (ISDOWN(HS(a2)))
  return (-rflg);
 else
  return (rflg *
     (HS(a2)->hs_wd.wd_loadav[0] - HS(a1)->hs_wd.wd_loadav[0]));
}
