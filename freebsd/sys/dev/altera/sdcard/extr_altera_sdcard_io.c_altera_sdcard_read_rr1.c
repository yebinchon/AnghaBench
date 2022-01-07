
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct altera_sdcard_softc {int as_res; } ;


 int ALTERA_SDCARD_OFF_RR1 ;
 int bus_read_2 (int ,int ) ;
 int le16toh (int ) ;

__attribute__((used)) static uint16_t
altera_sdcard_read_rr1(struct altera_sdcard_softc *sc)
{

 return (le16toh(bus_read_2(sc->as_res, ALTERA_SDCARD_OFF_RR1)));
}
