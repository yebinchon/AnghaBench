
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
struct ffec_softc {int dev; } ;


 int FEC_PALR_REG ;
 int FEC_PAUR_PADDR2_MASK ;
 int FEC_PAUR_REG ;
 int RD4 (struct ffec_softc*,int ) ;
 int arc4random () ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,char,char,char,char,char,char) ;

__attribute__((used)) static void
ffec_get_hwaddr(struct ffec_softc *sc, uint8_t *hwaddr)
{
 uint32_t palr, paur, rnd;
 palr = RD4(sc, FEC_PALR_REG);
 paur = RD4(sc, FEC_PAUR_REG) & FEC_PAUR_PADDR2_MASK;
 if ((palr | paur) != 0) {
  hwaddr[0] = palr >> 24;
  hwaddr[1] = palr >> 16;
  hwaddr[2] = palr >> 8;
  hwaddr[3] = palr >> 0;
  hwaddr[4] = paur >> 24;
  hwaddr[5] = paur >> 16;
 } else {
  rnd = arc4random() & 0x00ffffff;
  hwaddr[0] = 'b';
  hwaddr[1] = 's';
  hwaddr[2] = 'd';
  hwaddr[3] = rnd >> 16;
  hwaddr[4] = rnd >> 8;
  hwaddr[5] = rnd >> 0;
 }

 if (bootverbose) {
  device_printf(sc->dev,
      "MAC address %02x:%02x:%02x:%02x:%02x:%02x:\n",
      hwaddr[0], hwaddr[1], hwaddr[2],
      hwaddr[3], hwaddr[4], hwaddr[5]);
 }
}
