
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dumpreg {int type; int addr; } ;
struct TYPE_2__ {int nregs; struct dumpreg** regs; int revs; } ;
typedef int HAL_REVS ;
typedef int FILE ;


 int DUMP_BASEBAND ;
 int ath_hal_dumprange (int *,int,int) ;
 int match (struct dumpreg const*,int const*) ;
 TYPE_1__ state ;

__attribute__((used)) static void
ath_hal_dumpbb(FILE *fd, int what)
{
 const HAL_REVS *revs = &state.revs;
 int i, brun, erun;

 brun = erun = 0;
 for (i = 0; i < state.nregs; i++) {
  const struct dumpreg *dr = state.regs[i];
  if (!match(dr, revs))
   continue;
  if (dr->type & DUMP_BASEBAND) {
   if (brun == 0) {
    brun = erun = dr->addr;
   } else if (dr->addr == erun + sizeof(uint32_t)) {
    erun = dr->addr;
   } else {
    ath_hal_dumprange(fd, brun, erun);
    brun = erun = dr->addr;
   }
  } else {
   if (brun != 0)
    ath_hal_dumprange(fd, brun, erun);
   brun = erun = 0;
  }
 }
 if (brun != 0)
  ath_hal_dumprange(fd, brun, erun);
}
