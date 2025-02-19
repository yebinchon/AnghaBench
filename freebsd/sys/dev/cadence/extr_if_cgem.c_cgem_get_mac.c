
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
struct cgem_softc {int dev; } ;


 int CGEM_SPEC_ADDR_HI (int) ;
 int CGEM_SPEC_ADDR_LOW (int) ;
 int RD4 (struct cgem_softc*,int ) ;
 int WR4 (struct cgem_softc*,int ,int) ;
 int arc4random () ;
 int device_printf (int ,char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
cgem_get_mac(struct cgem_softc *sc, u_char eaddr[])
{
 int i;
 uint32_t rnd;


 for (i = 0; i < 4; i++) {
  uint32_t low = RD4(sc, CGEM_SPEC_ADDR_LOW(i));
  uint32_t high = RD4(sc, CGEM_SPEC_ADDR_HI(i)) & 0xffff;
  if (low != 0 || high != 0) {
   eaddr[0] = low & 0xff;
   eaddr[1] = (low >> 8) & 0xff;
   eaddr[2] = (low >> 16) & 0xff;
   eaddr[3] = (low >> 24) & 0xff;
   eaddr[4] = high & 0xff;
   eaddr[5] = (high >> 8) & 0xff;
   break;
  }
 }


 if (i == 4) {
  rnd = arc4random();

  eaddr[0] = 'b';
  eaddr[1] = 's';
  eaddr[2] = 'd';
  eaddr[3] = (rnd >> 16) & 0xff;
  eaddr[4] = (rnd >> 8) & 0xff;
  eaddr[5] = rnd & 0xff;

  device_printf(sc->dev, "no mac address found, assigning "
         "random: %02x:%02x:%02x:%02x:%02x:%02x\n",
         eaddr[0], eaddr[1], eaddr[2],
         eaddr[3], eaddr[4], eaddr[5]);
 }


 WR4(sc, CGEM_SPEC_ADDR_LOW(0), (eaddr[3] << 24) |
     (eaddr[2] << 16) | (eaddr[1] << 8) | eaddr[0]);
 WR4(sc, CGEM_SPEC_ADDR_HI(0), (eaddr[5] << 8) | eaddr[4]);

 for (i = 1; i < 4; i++) {
  WR4(sc, CGEM_SPEC_ADDR_LOW(i), 0);
  WR4(sc, CGEM_SPEC_ADDR_HI(i), 0);
 }
}
