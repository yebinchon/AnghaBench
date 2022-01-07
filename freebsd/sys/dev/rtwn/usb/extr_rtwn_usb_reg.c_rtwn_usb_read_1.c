
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;


 scalar_t__ rtwn_usb_read_region_1 (struct rtwn_softc*,int ,int*,int) ;

uint8_t
rtwn_usb_read_1(struct rtwn_softc *sc, uint16_t addr)
{
 uint8_t val;

 if (rtwn_usb_read_region_1(sc, addr, &val, 1) != 0)
  return (0xff);
 return (val);
}
