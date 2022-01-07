
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** pwrPdg; int** vpdPdg; int** pcdac; int** empty; } ;
typedef TYPE_1__ CAL_DATA_PER_FREQ_OP_LOOP ;


 int printf (char*,...) ;

__attribute__((used)) static void
eeprom_v14_print_caldata_perfreq_op_loop(CAL_DATA_PER_FREQ_OP_LOOP *f)
{
 int i, j;
 for (i = 0; i < 2; i++) {
  printf("    Gain: %d:\n", i);
  for (j = 0; j < 5; j++) {
   printf("      %d: pwrPdg: %d, vpdPdg: %d, pcdac: %d, empty: %d\n",
       j, f->pwrPdg[i][j], f->vpdPdg[i][j], f->pcdac[i][j], f->empty[i][j]);
  }
  printf("\n");
 }
}
