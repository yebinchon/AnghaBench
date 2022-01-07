
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creator_softc {int sc_fifo_cache; } ;


 int FBC_UCSR_FIFO_MASK ;
 int FFB_FBC ;
 int FFB_FBC_UCSR ;
 int FFB_READ (struct creator_softc*,int ,int ) ;

__attribute__((used)) static inline void
creator_ras_fifo_wait(struct creator_softc *sc, int n)
{
 int cache;

 cache = sc->sc_fifo_cache;
 while (cache < n)
  cache = (FFB_READ(sc, FFB_FBC, FFB_FBC_UCSR) &
      FBC_UCSR_FIFO_MASK) - 8;
 sc->sc_fifo_cache = cache - n;
}
