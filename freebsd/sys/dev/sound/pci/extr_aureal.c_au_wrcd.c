
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct au_info {int dummy; } ;
typedef int kobj_t ;


 int AU_CDC_REGSET ;
 int AU_CDC_WROK ;
 int AU_REG_CODECIO ;
 int AU_REG_CODECST ;
 int DELAY (int) ;
 int au_rd (struct au_info*,int ,int ,int) ;
 int au_wr (struct au_info*,int ,int ,int,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
au_wrcd(kobj_t obj, void *arg, int regno, u_int32_t data)
{
 struct au_info *au = (struct au_info *)arg;
 int i, j, tries;
 i=j=tries=0;
 do {
  while (j<50 && (i & AU_CDC_WROK) == 0) {
   i=au_rd(au, 0, AU_REG_CODECST, 4);
   DELAY(2000);
   j++;
  }
  if (j==50) printf("codec timeout during write of register %x, data %x\n",
      regno, data);
  au_wr(au, 0, AU_REG_CODECIO, (regno<<16) | AU_CDC_REGSET | data, 4);


    tries++;
 } while (0);




 return 0;
}
