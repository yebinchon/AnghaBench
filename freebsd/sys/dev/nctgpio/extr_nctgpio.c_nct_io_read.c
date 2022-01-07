
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nct_softc {int iores; } ;


 int bus_read_1 (int ,int ) ;
 int nct_io_set_group (struct nct_softc*,int) ;

__attribute__((used)) static uint8_t
nct_io_read(struct nct_softc *sc, int group, uint8_t reg)
{
 nct_io_set_group(sc, group);
 return (bus_read_1(sc->iores, reg));
}
