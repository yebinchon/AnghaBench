
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int rman_res_t ;


 int printf (char*,char*,int,int) ;

__attribute__((used)) static void
apb_map_print(uint8_t map, rman_res_t scale)
{
 int i, first;

 for (first = 1, i = 0; i < 8; i++) {
  if ((map & (1 << i)) != 0) {
   printf("%s0x%jx-0x%jx", first ? "" : ", ",
       i * scale, (i + 1) * scale - 1);
   first = 0;
  }
 }
}
