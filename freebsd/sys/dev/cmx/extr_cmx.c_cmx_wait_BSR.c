
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cmx_softc {int timeout; scalar_t__ dying; } ;


 int EAGAIN ;
 int EIO ;
 int ENXIO ;
 int PCATCH ;
 int PWAIT ;
 int SPIN_COUNT ;
 int WAIT_TICKS ;
 scalar_t__ cmx_test_BSR (struct cmx_softc*,int ,int) ;
 int tsleep (struct cmx_softc*,int,char*,int) ;

__attribute__((used)) static inline int
cmx_wait_BSR(struct cmx_softc *sc, uint8_t flags, int test)
{
 int rv;

 for (int i = 0; i < SPIN_COUNT; i++) {
  if (cmx_test_BSR(sc, flags, test))
   return 0;
 }

 for (int i = 0; i * WAIT_TICKS < sc->timeout; i++) {
  if (cmx_test_BSR(sc, flags, test))
   return 0;
  rv = tsleep(sc, PWAIT|PCATCH, "cmx", WAIT_TICKS);





  if (sc->dying)
   return ENXIO;
  if (rv != EAGAIN)
   return rv;
 }


 return EIO;
}
