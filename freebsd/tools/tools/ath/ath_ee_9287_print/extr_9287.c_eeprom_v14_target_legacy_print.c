
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bChannel; scalar_t__* tPow2x; } ;
typedef TYPE_1__ CAL_TARGET_POWER_LEG ;


 int printf (char*,...) ;

__attribute__((used)) static void
eeprom_v14_target_legacy_print(CAL_TARGET_POWER_LEG *l)
{
 int i;
 if (l->bChannel == 0xff)
  return;
 printf("  bChannel: %d;", l->bChannel);
 for (i = 0; i < 4; i++) {
  printf(" %.2f", (float) l->tPow2x[i] / 2.0);
 }
 printf(" (dBm)\n");
}
