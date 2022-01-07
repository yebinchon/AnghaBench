
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sdiob_softc {int dummy; } ;


 int sdiob_rw_direct_sc (struct sdiob_softc*,int ,int ,int,int *) ;

__attribute__((used)) static int
sdio_read_direct_sc(struct sdiob_softc *sc, uint8_t fn, uint32_t addr,
    uint8_t *val)
{
 int error;
 uint8_t v;

 error = sdiob_rw_direct_sc(sc, fn, addr, 0, &v);
 if (error == 0 && val != ((void*)0))
  *val = v;
 return (error);
}
