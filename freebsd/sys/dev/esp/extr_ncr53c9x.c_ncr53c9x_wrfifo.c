
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ncr53c9x_softc {scalar_t__ sc_rev; } ;


 int MA_OWNED ;
 int NCR_FIFO ;
 int NCR_LOCK_ASSERT (struct ncr53c9x_softc*,int ) ;
 int NCR_MSGS (char*) ;
 int NCR_SHOWMSGS ;
 scalar_t__ NCR_VARIANT_FAS366 ;
 int NCR_WRITE_REG (struct ncr53c9x_softc*,int ,int) ;
 int ncr53c9x_debug ;
 int printf (char*,...) ;

__attribute__((used)) static void
ncr53c9x_wrfifo(struct ncr53c9x_softc *sc, uint8_t *p, int len)
{
 int i;

 NCR_LOCK_ASSERT(sc, MA_OWNED);
 for (i = 0; i < len; i++) {
  NCR_WRITE_REG(sc, NCR_FIFO, p[i]);

  if (sc->sc_rev == NCR_VARIANT_FAS366)
   NCR_WRITE_REG(sc, NCR_FIFO, 0);
 }
}
