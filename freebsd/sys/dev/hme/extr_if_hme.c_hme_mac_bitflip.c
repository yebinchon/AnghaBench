
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hme_softc {int sc_dev; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int DELAY (int) ;
 int HME_MAC_BARRIER (struct hme_softc*,int,int,int) ;
 int HME_MAC_READ_4 (struct hme_softc*,int) ;
 int HME_MAC_WRITE_4 (struct hme_softc*,int,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
hme_mac_bitflip(struct hme_softc *sc, u_int32_t reg, u_int32_t val,
    u_int32_t clr, u_int32_t set)
{
 int i = 0;

 val &= ~clr;
 val |= set;
 HME_MAC_WRITE_4(sc, reg, val);
 HME_MAC_BARRIER(sc, reg, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 if (clr == 0 && set == 0)
  return (1);
 do {
  DELAY(100);
  i++;
  val = HME_MAC_READ_4(sc, reg);
  if (i > 40) {

   device_printf(sc->sc_dev, "timeout while writing to "
       "MAC configuration register\n");
   return (0);
  }
 } while ((val & clr) != 0 && (val & set) != set);
 return (1);
}
