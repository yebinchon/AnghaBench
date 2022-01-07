
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; } ;
typedef TYPE_1__ e6000sw_softc_t ;


 scalar_t__ E6000SW_WAITREADY (TYPE_1__*,int ,int) ;
 int EBUSY ;
 int ETIMEDOUT ;
 int REG_GLOBAL ;
 int VTU_BUSY ;
 int VTU_FLUSH ;
 int VTU_OPERATION ;
 int device_printf (int ,char*) ;
 int e6000sw_writereg (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static int
e6000sw_vtu_flush(e6000sw_softc_t *sc)
{

 if (E6000SW_WAITREADY(sc, VTU_OPERATION, VTU_BUSY)) {
  device_printf(sc->dev, "VTU unit is busy, cannot access\n");
  return (EBUSY);
 }

 e6000sw_writereg(sc, REG_GLOBAL, VTU_OPERATION, VTU_FLUSH | VTU_BUSY);
 if (E6000SW_WAITREADY(sc, VTU_OPERATION, VTU_BUSY)) {
  device_printf(sc->dev, "Timeout while flushing VTU\n");
  return (ETIMEDOUT);
 }

 return (0);
}
