
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct cfi_softc {int sc_cmdset; scalar_t__* sc_typical_timeouts; scalar_t__* sc_max_timeouts; int sc_dev; int * sc_mto_counts; int * sc_tto_counts; } ;
typedef scalar_t__ sbintime_t ;
typedef enum cfi_wait_cmd { ____Placeholder_cfi_wait_cmd } cfi_wait_cmd ;


 int CFI_INTEL_STATUS_DPS ;
 int CFI_INTEL_STATUS_ECLBS ;
 int CFI_INTEL_STATUS_PSLBS ;
 int CFI_INTEL_STATUS_RSVD ;
 int CFI_INTEL_STATUS_WSMS ;
 int CFI_INTEL_XSTATUS_RSVD ;




 int EACCES ;
 int EIO ;
 int ENXIO ;
 int EPERM ;
 int ETIMEDOUT ;
 int cfi_read (struct cfi_softc*,int ) ;
 int device_printf (int ,char*,int) ;
 int printf (char*,int,int,int) ;
 scalar_t__ sbinuptime () ;

__attribute__((used)) static int
cfi_wait_ready(struct cfi_softc *sc, u_int ofs, sbintime_t start,
    enum cfi_wait_cmd cmd)
{
 int done, error, tto_exceeded;
 uint32_t st0 = 0, st = 0;
 sbintime_t now;

 done = 0;
 error = 0;
 tto_exceeded = 0;
 while (!done && !error) {




  now = sbinuptime();

  switch (sc->sc_cmdset) {
  case 129:
  case 128:
   st = cfi_read(sc, ofs);
   done = (st & CFI_INTEL_STATUS_WSMS);
   if (done) {

    st &= ~(CFI_INTEL_XSTATUS_RSVD |
     CFI_INTEL_STATUS_WSMS |
     CFI_INTEL_STATUS_RSVD);
    if (st & CFI_INTEL_STATUS_DPS)
     error = EPERM;
    else if (st & CFI_INTEL_STATUS_PSLBS)
     error = EIO;
    else if (st & CFI_INTEL_STATUS_ECLBS)
     error = ENXIO;
    else if (st)
     error = EACCES;
   }
   break;
  case 130:
  case 131:
   st0 = cfi_read(sc, ofs);
   st = cfi_read(sc, ofs);
   done = ((st & 0x40) == (st0 & 0x40)) ? 1 : 0;
   break;
  }

  if (tto_exceeded ||
      now > start + sc->sc_typical_timeouts[cmd]) {
   if (!tto_exceeded) {
    tto_exceeded = 1;
    sc->sc_tto_counts[cmd]++;




   }
   if (now > start + sc->sc_max_timeouts[cmd]) {
    sc->sc_mto_counts[cmd]++;




   }
  }
 }
 if (!done && !error)
  error = ETIMEDOUT;
 if (error)
  printf("\nerror=%d (st 0x%x st0 0x%x)\n", error, st, st0);
 return (error);
}
