
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
typedef TYPE_1__ e6000sw_softc_t ;


 int DELAY (int) ;
 int E6000SW_SMI_TIMEOUT ;
 int MDIO_READ (int ,int,int ) ;
 int SMI_CMD ;
 int SMI_CMD_BUSY ;

__attribute__((used)) static int
e6000sw_smi_waitready(e6000sw_softc_t *sc, int phy)
{
 int i;

 for (i = 0; i < E6000SW_SMI_TIMEOUT; i++) {
  if ((MDIO_READ(sc->dev, phy, SMI_CMD) & SMI_CMD_BUSY) == 0)
   return (0);
  DELAY(1);
 }

 return (1);
}
