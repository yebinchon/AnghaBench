
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hs_nusers; } ;


 TYPE_1__* HS (void const*) ;
 scalar_t__ ISDOWN (TYPE_1__*) ;
 int rflg ;
 int tcmp (void const*,void const*) ;

__attribute__((used)) static int
ucmp(const void *a1, const void *a2)
{
 if (ISDOWN(HS(a1)))
  if (ISDOWN(HS(a2)))
   return (tcmp(a1, a2));
  else
   return (rflg);
 else if (ISDOWN(HS(a2)))
  return (-rflg);
 else
  return (rflg * (HS(a2)->hs_nusers - HS(a1)->hs_nusers));
}
