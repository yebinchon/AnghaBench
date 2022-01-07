
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint8_t ;
typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;


 int rtwn_usb_write_region_1 (struct rtwn_softc*,int ,int *,int) ;

int
rtwn_usb_write_1(struct rtwn_softc *sc, uint16_t addr, uint8_t val)
{
 return (rtwn_usb_write_region_1(sc, addr, &val, sizeof(val)));
}
