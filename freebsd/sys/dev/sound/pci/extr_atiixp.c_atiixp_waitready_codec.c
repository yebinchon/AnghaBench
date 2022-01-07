
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_info {int dummy; } ;


 int ATI_REG_PHYS_OUT_ADDR ;
 int ATI_REG_PHYS_OUT_ADDR_EN ;
 int DELAY (int) ;
 int atiixp_rd (struct atiixp_info*,int ) ;

__attribute__((used)) static int
atiixp_waitready_codec(struct atiixp_info *sc)
{
 int timeout = 500;

 do {
  if ((atiixp_rd(sc, ATI_REG_PHYS_OUT_ADDR) &
      ATI_REG_PHYS_OUT_ADDR_EN) == 0)
   return (0);
  DELAY(1);
 } while (--timeout);

 return (-1);
}
