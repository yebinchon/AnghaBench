
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int sc_freq; } ;


 int MA_OWNED ;
 int NCR_LOCK_ASSERT (struct ncr53c9x_softc*,int ) ;
 int ncr53c9x_cpb2stp (struct ncr53c9x_softc*,int) ;

__attribute__((used)) static inline int
ncr53c9x_stp2cpb(struct ncr53c9x_softc *sc, int period)
{
 int v;

 NCR_LOCK_ASSERT(sc, MA_OWNED);

 v = (sc->sc_freq * period) / 250;
 if (ncr53c9x_cpb2stp(sc, v) < period)

  v++;
 return (v);
}
