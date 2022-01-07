
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** vpdPdg; scalar_t__** pwrPdg; } ;
typedef TYPE_1__ CAL_DATA_PER_FREQ_4K ;


 int AR5416_4K_NUM_PD_GAINS ;
 int AR5416_PD_GAIN_ICEPTS ;
 int printf (char*,...) ;

__attribute__((used)) static void
eeprom_v4k_print_caldata_perfreq(CAL_DATA_PER_FREQ_4K *f)
{
 int i, j;

 for (i = 0; i < AR5416_4K_NUM_PD_GAINS; i++) {
  printf("    Gain %d: pwr dBm/vpd: ", i);
  for (j = 0; j < AR5416_PD_GAIN_ICEPTS; j++) {



   printf("%d:(%.2f/%d) ", j, (float) f->pwrPdg[i][j] / 4.00,
       f->vpdPdg[i][j]);
  }
  printf("\n");
 }
}
