
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct asmc_softc {int dummy; } ;
typedef int device_t ;


 int ASMC_CMDPORT_READ (struct asmc_softc*) ;
 int ASMC_STATUS_MASK ;
 int DELAY (int) ;
 struct asmc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
asmc_wait_ack(device_t dev, uint8_t val, int amount)
{
 struct asmc_softc *sc = device_get_softc(dev);
 u_int i;

 val = val & ASMC_STATUS_MASK;

 for (i = 0; i < amount; i++) {
  if ((ASMC_CMDPORT_READ(sc) & ASMC_STATUS_MASK) == val)
   return (0);
  DELAY(10);
 }

 return (1);
}
