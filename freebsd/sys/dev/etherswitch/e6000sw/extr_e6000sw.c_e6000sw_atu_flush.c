
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int e6000sw_softc_t ;
typedef int device_t ;


 int ATU_OPERATION ;
 int ATU_UNIT_BUSY ;
 scalar_t__ E6000SW_WAITREADY (int *,int ,int) ;
 int EBUSY ;
 int NO_OPERATION ;
 int REG_GLOBAL ;
 int device_printf (int ,char*) ;
 int e6000sw_readreg (int *,int ,int ) ;
 int e6000sw_writereg (int *,int ,int ,int) ;

__attribute__((used)) static int
e6000sw_atu_flush(device_t dev, e6000sw_softc_t *sc, int flag)
{
 uint32_t reg;

 if (flag == NO_OPERATION)
  return (0);

 if (E6000SW_WAITREADY(sc, ATU_OPERATION, ATU_UNIT_BUSY)) {
  device_printf(dev, "ATU unit is busy, cannot access\n");
  return (EBUSY);
 }
 reg = e6000sw_readreg(sc, REG_GLOBAL, ATU_OPERATION);
 e6000sw_writereg(sc, REG_GLOBAL, ATU_OPERATION,
     (reg | ATU_UNIT_BUSY | flag));
 if (E6000SW_WAITREADY(sc, ATU_OPERATION, ATU_UNIT_BUSY))
  device_printf(dev, "Timeout while flushing ATU\n");

 return (0);
}
