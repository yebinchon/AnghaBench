
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dumpreg {int type; } ;
struct TYPE_2__ {int nregs; struct dumpreg** regs; int revs; } ;
typedef int HAL_REVS ;


 scalar_t__ match (struct dumpreg const*,int const*) ;
 TYPE_1__ state ;

__attribute__((used)) static int
ath_hal_anyregs(int what)
{
 const HAL_REVS *revs = &state.revs;
 int i;

 for (i = 0; i < state.nregs; i++) {
  const struct dumpreg *dr = state.regs[i];
  if ((what & dr->type) && match(dr, revs))
   return 1;
 }
 return 0;
}
