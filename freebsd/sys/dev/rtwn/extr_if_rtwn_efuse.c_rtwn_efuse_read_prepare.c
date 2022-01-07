
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rtwn_softc {int dummy; } ;


 int R92C_EFUSE_ACCESS ;
 int R92C_EFUSE_ACCESS_OFF ;
 int rtwn_efuse_read (struct rtwn_softc*,int *,int ) ;
 int rtwn_efuse_switch_power (struct rtwn_softc*) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int ) ;

__attribute__((used)) static int
rtwn_efuse_read_prepare(struct rtwn_softc *sc, uint8_t *rom, uint16_t size)
{
 int error;

 error = rtwn_efuse_switch_power(sc);
 if (error != 0)
  goto fail;

 error = rtwn_efuse_read(sc, rom, size);

fail:
 rtwn_write_1(sc, R92C_EFUSE_ACCESS, R92C_EFUSE_ACCESS_OFF);

 return (error);
}
