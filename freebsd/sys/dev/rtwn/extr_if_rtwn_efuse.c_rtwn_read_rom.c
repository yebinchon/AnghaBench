
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int efuse_maplen; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int free (int *,int ) ;
 int * malloc (int ,int ,int ) ;
 int rtwn_efuse_read_prepare (struct rtwn_softc*,int *,int ) ;
 int rtwn_parse_rom (struct rtwn_softc*,int *) ;

int
rtwn_read_rom(struct rtwn_softc *sc)
{
 uint8_t *rom;
 int error;

 rom = malloc(sc->efuse_maplen, M_TEMP, M_WAITOK);


 RTWN_LOCK(sc);
 error = rtwn_efuse_read_prepare(sc, rom, sc->efuse_maplen);
 RTWN_UNLOCK(sc);
 if (error != 0)
  goto fail;


 rtwn_parse_rom(sc, rom);

fail:
 free(rom, M_TEMP);

 return (error);
}
