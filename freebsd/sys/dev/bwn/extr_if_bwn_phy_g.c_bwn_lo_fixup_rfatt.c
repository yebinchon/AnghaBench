
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_rfatt {int att; int padmix; } ;



__attribute__((used)) static void
bwn_lo_fixup_rfatt(struct bwn_rfatt *rf)
{

 if (!rf->padmix)
  return;
 if ((rf->att != 1) && (rf->att != 2) && (rf->att != 3))
  rf->att = 4;
}
