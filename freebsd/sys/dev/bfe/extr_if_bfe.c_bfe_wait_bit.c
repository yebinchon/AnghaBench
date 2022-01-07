
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_int32_t ;
struct bfe_softc {int bfe_dev; } ;


 int CSR_READ_4 (struct bfe_softc*,int) ;
 int DELAY (int) ;
 int device_printf (int ,char*,int,int,char*) ;

__attribute__((used)) static int
bfe_wait_bit(struct bfe_softc *sc, u_int32_t reg, u_int32_t bit,
  u_long timeout, const int clear)
{
 u_long i;

 for (i = 0; i < timeout; i++) {
  u_int32_t val = CSR_READ_4(sc, reg);

  if (clear && !(val & bit))
   break;
  if (!clear && (val & bit))
   break;
  DELAY(10);
 }
 if (i == timeout) {
  device_printf(sc->bfe_dev,
      "BUG!  Timeout waiting for bit %08x of register "
      "%x to %s.\n", bit, reg, (clear ? "clear" : "set"));
  return (-1);
 }
 return (0);
}
