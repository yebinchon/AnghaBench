
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct altera_sdcard_softc {int as_res; } ;


 int ALTERA_SDCARD_OFF_CMD ;
 int bus_write_2 (int ,int ,int ) ;
 int htole16 (int ) ;

__attribute__((used)) static void
altera_sdcard_write_cmd(struct altera_sdcard_softc *sc, uint16_t cmd)
{

 bus_write_2(sc->as_res, ALTERA_SDCARD_OFF_CMD, htole16(cmd));
}
