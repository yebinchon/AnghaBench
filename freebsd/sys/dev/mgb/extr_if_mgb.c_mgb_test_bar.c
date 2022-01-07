
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mgb_softc {int dev; } ;


 int CSR_READ_REG (struct mgb_softc*,int ) ;
 int ENXIO ;
 int MGB_LAN7430_DEVICE_ID ;
 int MGB_LAN7431_DEVICE_ID ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
mgb_test_bar(struct mgb_softc *sc)
{
 uint32_t id_rev, dev_id, rev;

 id_rev = CSR_READ_REG(sc, 0);
 dev_id = id_rev >> 16;
 rev = id_rev & 0xFFFF;
 if (dev_id == MGB_LAN7430_DEVICE_ID ||
     dev_id == MGB_LAN7431_DEVICE_ID) {
  return 0;
 } else {
  device_printf(sc->dev, "ID check failed.\n");
  return ENXIO;
 }
}
