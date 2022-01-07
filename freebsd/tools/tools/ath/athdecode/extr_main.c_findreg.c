
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dumpreg {int addr; } ;
struct TYPE_3__ {int ah_macRev; int ah_macVersion; } ;
struct TYPE_4__ {int nregs; struct dumpreg** regs; TYPE_1__ revs; } ;
typedef TYPE_1__ HAL_REVS ;


 scalar_t__ MAC_MATCH (struct dumpreg const*,int ,int ) ;
 TYPE_2__ state ;

__attribute__((used)) static const struct dumpreg *
findreg(int reg)
{
 const HAL_REVS *revs = &state.revs;
 int i;

 for (i = 0; i < state.nregs; i++) {
  const struct dumpreg *dr = state.regs[i];
  if (dr->addr == reg &&
      MAC_MATCH(dr, revs->ah_macVersion, revs->ah_macRev))
   return dr;
 }
 return ((void*)0);
}
