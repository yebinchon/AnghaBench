
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int dummy; } ;


 int DELAY (int) ;
 int DSP_READ ;
 int ess_rd (struct ess_info*,int) ;

__attribute__((used)) static int
ess_get_byte(struct ess_info *sc)
{
     int i;

     for (i = 1000; i > 0; i--) {
  if (ess_rd(sc, 0xc) & 0x40)
   return ess_rd(sc, DSP_READ);
  else
   DELAY(20);
     }
     return -1;
}
