
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct tpm_softc {int sc_stat; } ;


 int EWOULDBLOCK ;
 int PCATCH ;
 int PRIBIO ;
 int printf (char*,int) ;
 int tpm_status (struct tpm_softc*) ;
 int tsleep (void*,int,char*,int) ;

int
tpm_waitfor_poll(struct tpm_softc *sc, u_int8_t mask, int tmo, void *c)
{
 int rv;





 while (((sc->sc_stat = tpm_status(sc)) & mask) != mask && tmo--) {
  rv = tsleep(c, PRIBIO | PCATCH, "tpm_poll", 1);
  if (rv && rv != EWOULDBLOCK) {



   return rv;
  }
 }

 return 0;
}
