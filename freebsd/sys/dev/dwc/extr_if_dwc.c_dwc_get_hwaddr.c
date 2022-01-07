
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
struct dwc_softc {int dummy; } ;


 int MAC_ADDRESS_HIGH (int ) ;
 int MAC_ADDRESS_LOW (int ) ;
 int READ4 (struct dwc_softc*,int ) ;
 int arc4random () ;

__attribute__((used)) static int
dwc_get_hwaddr(struct dwc_softc *sc, uint8_t *hwaddr)
{
 uint32_t hi, lo, rnd;
 lo = READ4(sc, MAC_ADDRESS_LOW(0));
 hi = READ4(sc, MAC_ADDRESS_HIGH(0)) & 0xffff;
 if ((lo != 0xffffffff) || (hi != 0xffff)) {
  hwaddr[0] = (lo >> 0) & 0xff;
  hwaddr[1] = (lo >> 8) & 0xff;
  hwaddr[2] = (lo >> 16) & 0xff;
  hwaddr[3] = (lo >> 24) & 0xff;
  hwaddr[4] = (hi >> 0) & 0xff;
  hwaddr[5] = (hi >> 8) & 0xff;
 } else {
  rnd = arc4random() & 0x00ffffff;
  hwaddr[0] = 'b';
  hwaddr[1] = 's';
  hwaddr[2] = 'd';
  hwaddr[3] = rnd >> 16;
  hwaddr[4] = rnd >> 8;
  hwaddr[5] = rnd >> 0;
 }

 return (0);
}
