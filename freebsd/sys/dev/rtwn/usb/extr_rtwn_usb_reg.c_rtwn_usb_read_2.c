
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;


 int le16toh (int) ;
 scalar_t__ rtwn_usb_read_region_1 (struct rtwn_softc*,int,int *,int) ;

uint16_t
rtwn_usb_read_2(struct rtwn_softc *sc, uint16_t addr)
{
 uint16_t val;

 if (rtwn_usb_read_region_1(sc, addr, (uint8_t *)&val, 2) != 0)
  return (0xffff);
 return (le16toh(val));
}
