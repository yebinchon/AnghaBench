
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scc_bas {int dummy; } ;
struct scc_softc {struct scc_bas sc_bas; } ;
struct scc_chan {int ch_nr; } ;


 int QUICC_REG_SCC_TODR (int) ;
 int quicc_read2 (struct scc_bas*,int ) ;
 int quicc_write2 (struct scc_bas*,int ,int) ;

__attribute__((used)) static int
quicc_bfe_enabled(struct scc_softc *sc, struct scc_chan *ch)
{
 struct scc_bas *bas;
 int unit;
 uint16_t val0, val1;

 bas = &sc->sc_bas;
 unit = ch->ch_nr - 1;
 val0 = quicc_read2(bas, QUICC_REG_SCC_TODR(unit));
 quicc_write2(bas, QUICC_REG_SCC_TODR(unit), ~val0);
 val1 = quicc_read2(bas, QUICC_REG_SCC_TODR(unit));
 quicc_write2(bas, QUICC_REG_SCC_TODR(unit), val0);
 return (((val0 | val1) == 0x8000) ? 1 : 0);
}
