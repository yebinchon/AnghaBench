
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; int * mem; } ;
typedef TYPE_1__ ae_softc_t ;


 int AE_IDLE_REG ;
 int AE_IDLE_TIMEOUT ;
 int AE_MASTER_REG ;
 int AE_MASTER_SOFT_RESET ;
 int AE_READ_4 (TYPE_1__*,int ) ;
 int AE_RESET_TIMEOUT ;
 int AE_WRITE_4 (TYPE_1__*,int ,int) ;
 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int DELAY (int) ;
 int ENXIO ;
 int bus_barrier (int ,int ,int,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ae_reset(ae_softc_t *sc)
{
 int i;




 AE_WRITE_4(sc, AE_MASTER_REG, AE_MASTER_SOFT_RESET);
 bus_barrier(sc->mem[0], AE_MASTER_REG, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);




 for (i = 0; i < AE_RESET_TIMEOUT; i++) {
  if ((AE_READ_4(sc, AE_MASTER_REG) & AE_MASTER_SOFT_RESET) == 0)
   break;
  DELAY(10);
 }
 if (i == AE_RESET_TIMEOUT) {
  device_printf(sc->dev, "reset timeout.\n");
  return (ENXIO);
 }




 for (i = 0; i < AE_IDLE_TIMEOUT; i++) {
  if (AE_READ_4(sc, AE_IDLE_REG) == 0)
   break;
  DELAY(100);
 }
 if (i == AE_IDLE_TIMEOUT) {
  device_printf(sc->dev, "could not enter idle state.\n");
  return (ENXIO);
 }
 return (0);
}
