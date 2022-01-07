
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__** ctlEdges; } ;
struct TYPE_4__ {int tPowerFlag; } ;
typedef TYPE_2__ CAL_CTL_DATA_4K ;


 int AR5416_4K_MAX_CHAINS ;
 int AR5416_4K_NUM_BAND_EDGES ;
 int printf (char*,...) ;

__attribute__((used)) static void
eeprom_v4k_ctl_edge_print(CAL_CTL_DATA_4K *ctl)
{
 int i, j;
 uint8_t pow, flag;

 for (i = 0; i < AR5416_4K_MAX_CHAINS; i++) {
  printf("  chain %d: ", i);
  for (j = 0; j < AR5416_4K_NUM_BAND_EDGES; j++) {
   pow = ctl->ctlEdges[i][j].tPowerFlag & 0x3f;
   flag = (ctl->ctlEdges[i][j].tPowerFlag & 0xc0) >> 6;
   printf(" %d:pow=%d,flag=%.2x", j, pow, flag);
  }
  printf("\n");
 }
}
