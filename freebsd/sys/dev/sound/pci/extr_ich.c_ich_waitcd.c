
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_info {int flags; int dev; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int ICH_IGNORE_PCR ;
 int ICH_REG_ACC_SEMA ;
 int ICH_TIMEOUT ;
 int device_printf (int ,char*) ;
 int ich_rd (struct sc_info*,int ,int) ;

__attribute__((used)) static int
ich_waitcd(void *devinfo)
{
 struct sc_info *sc = (struct sc_info *)devinfo;
 uint32_t data;
 int i;

 for (i = 0; i < ICH_TIMEOUT; i++) {
  data = ich_rd(sc, ICH_REG_ACC_SEMA, 1);
  if ((data & 0x01) == 0)
   return (0);
  DELAY(1);
 }
 if ((sc->flags & ICH_IGNORE_PCR) != 0)
  return (0);
 device_printf(sc->dev, "CODEC semaphore timeout\n");
 return (ETIMEDOUT);
}
