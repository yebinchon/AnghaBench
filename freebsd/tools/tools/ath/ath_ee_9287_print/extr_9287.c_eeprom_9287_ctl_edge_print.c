
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct cal_ctl_data_ar9287 {TYPE_1__** ctlEdges; } ;
struct TYPE_2__ {int tPowerFlag; } ;


 int AR9287_MAX_CHAINS ;
 int AR9287_NUM_BAND_EDGES ;
 int printf (char*,...) ;

__attribute__((used)) static void
eeprom_9287_ctl_edge_print(struct cal_ctl_data_ar9287 *ctl)
{
 int i, j;
 uint8_t pow, flag;

 for (i = 0; i < AR9287_MAX_CHAINS; i++) {
  printf("  chain %d: ", i);
  for (j = 0; j < AR9287_NUM_BAND_EDGES; j++) {
   pow = ctl->ctlEdges[i][j].tPowerFlag & 0x3f;
   flag = (ctl->ctlEdges[i][j].tPowerFlag & 0xc0) >> 6;
   printf(" %d:pow=%d,flag=%.2x", j, pow, flag);
  }
  printf("\n");
 }
}
