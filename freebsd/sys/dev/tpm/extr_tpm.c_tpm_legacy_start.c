
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_2__ {char* dv_xname; } ;
struct tpm_softc {TYPE_1__ sc_dev; int sc_bahm; int sc_batm; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;


 int EIO ;
 int EWOULDBLOCK ;
 int PCATCH ;
 int PRIBIO ;
 int TPM_LEGACY_BITS ;
 int TPM_LEGACY_BUSY ;
 int TPM_LEGACY_DA ;
 int TPM_LEGACY_SLEEP ;
 int TPM_LEGACY_TMO ;
 int UIO_READ ;
 int bus_space_read_1 (int ,int ,int) ;
 int printf (char*,char*,int,int ) ;
 int tsleep (struct tpm_softc*,int,char*,int) ;
 int tvtohz (struct timeval*) ;

int
tpm_legacy_start(struct tpm_softc *sc, int flag)
{
 struct timeval tv;
 u_int8_t bits, r;
 int to, rv;

 bits = flag == UIO_READ ? TPM_LEGACY_DA : 0;
 tv.tv_sec = TPM_LEGACY_TMO;
 tv.tv_usec = 0;
 to = tvtohz(&tv) / TPM_LEGACY_SLEEP;
 while (((r = bus_space_read_1(sc->sc_batm, sc->sc_bahm, 1)) &
     (TPM_LEGACY_BUSY|bits)) != bits && to--) {
  rv = tsleep(sc, PRIBIO | PCATCH, "legacy_tpm_start",
      TPM_LEGACY_SLEEP);
  if (rv && rv != EWOULDBLOCK)
   return rv;
 }




 if ((r & (TPM_LEGACY_BUSY|bits)) != bits)
  return EIO;

 return 0;
}
