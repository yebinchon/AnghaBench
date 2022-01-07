
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_scr {void* bus_widths; void* sda_vsn; } ;


 int memset (struct mmc_scr*,int ,int) ;
 void* mmc_get_bits (int *,int,int,int) ;
 int printf (char*,unsigned int) ;

__attribute__((used)) static void
mmc_app_decode_scr(uint32_t *raw_scr, struct mmc_scr *scr)
{
 unsigned int scr_struct;

 memset(scr, 0, sizeof(*scr));

 scr_struct = mmc_get_bits(raw_scr, 64, 60, 4);
 if (scr_struct != 0) {
  printf("Unrecognised SCR structure version %d\n",
      scr_struct);
  return;
 }
 scr->sda_vsn = mmc_get_bits(raw_scr, 64, 56, 4);
 scr->bus_widths = mmc_get_bits(raw_scr, 64, 48, 4);
}
