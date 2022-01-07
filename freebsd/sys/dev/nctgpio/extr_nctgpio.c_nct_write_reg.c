
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nct_softc {int dev; int * iores; } ;
typedef int reg_t ;


 int nct_get_ioreg (struct nct_softc*,int ,int) ;
 int nct_io_write (struct nct_softc*,int,int ,int ) ;
 int superio_write (int ,int ,int ) ;

__attribute__((used)) static void
nct_write_reg(struct nct_softc *sc, reg_t reg, int group, uint8_t val)
{
 uint8_t ioreg;

 ioreg = nct_get_ioreg(sc, reg, group);
 if (sc->iores != ((void*)0))
  nct_io_write(sc, group, ioreg, val);
 else
  superio_write(sc->dev, ioreg, val);
}
