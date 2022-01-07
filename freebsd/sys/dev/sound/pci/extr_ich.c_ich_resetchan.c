
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int flags; scalar_t__ vendor; int dev; } ;


 int DELAY (int) ;
 int ENXIO ;
 int ICH_IGNORE_RESET ;
 int ICH_REG_MC_BASE ;
 int ICH_REG_PI_BASE ;
 int ICH_REG_PO_BASE ;
 scalar_t__ ICH_REG_X_CR ;
 int ICH_TIMEOUT ;
 int ICH_X_CR_RR ;
 scalar_t__ NVIDIA_VENDORID ;
 int device_printf (int ,char*,...) ;
 int ich_rd (struct sc_info*,scalar_t__,int) ;
 int ich_wr (struct sc_info*,scalar_t__,int ,int) ;

__attribute__((used)) static int
ich_resetchan(struct sc_info *sc, int num)
{
 int i, cr, regbase;

 if (num == 0)
  regbase = ICH_REG_PO_BASE;
 else if (num == 1)
  regbase = ICH_REG_PI_BASE;
 else if (num == 2)
  regbase = ICH_REG_MC_BASE;
 else
  return (ENXIO);

 ich_wr(sc, regbase + ICH_REG_X_CR, 0, 1);


 DELAY(100);



 ich_wr(sc, regbase + ICH_REG_X_CR, ICH_X_CR_RR, 1);
 for (i = 0; i < ICH_TIMEOUT; i++) {
  cr = ich_rd(sc, regbase + ICH_REG_X_CR, 1);
  if (cr == 0)
   return (0);
  DELAY(1);
 }

 if (sc->flags & ICH_IGNORE_RESET)
  return (0);
 device_printf(sc->dev, "cannot reset channel %d\n", num);
 return (ENXIO);
}
