
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct altera_sdcard_softc {int as_res; } ;


 int ALTERA_SDCARD_OFF_CMD_ARG ;
 int bus_write_4 (int ,int ,int ) ;
 int htole32 (int ) ;

__attribute__((used)) static void
altera_sdcard_write_cmd_arg(struct altera_sdcard_softc *sc, uint32_t cmd_arg)
{

 bus_write_4(sc->as_res, ALTERA_SDCARD_OFF_CMD_ARG, htole32(cmd_arg));
}
