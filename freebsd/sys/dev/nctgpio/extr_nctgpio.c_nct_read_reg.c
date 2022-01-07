
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nct_softc {int dev; int * iores; } ;
typedef int reg_t ;


 int nct_get_ioreg (struct nct_softc*,int ,int) ;
 int nct_io_read (struct nct_softc*,int,int ) ;
 int superio_read (int ,int ) ;

__attribute__((used)) static uint8_t
nct_read_reg(struct nct_softc *sc, reg_t reg, int group)
{
 uint8_t ioreg;
 uint8_t val;

 ioreg = nct_get_ioreg(sc, reg, group);
 if (sc->iores != ((void*)0))
  val = nct_io_read(sc, group, ioreg);
 else
  val = superio_read(sc->dev, ioreg);

 return (val);
}
