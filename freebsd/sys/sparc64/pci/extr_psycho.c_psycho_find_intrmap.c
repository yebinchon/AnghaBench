
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
struct psycho_softc {scalar_t__ sc_mode; int sc_dev; } ;
typedef scalar_t__ bus_addr_t ;


 int INTINO (int) ;
 scalar_t__ PSR_OBIO_INT_DIAG ;
 scalar_t__ PSR_PCIA0_INT_CLR ;
 scalar_t__ PSR_PCIA0_INT_MAP ;
 scalar_t__ PSR_PCIA2_INT_MAP ;
 scalar_t__ PSR_PCIA3_INT_MAP ;
 scalar_t__ PSR_PCIB3_INT_MAP ;
 scalar_t__ PSR_PCIBERR_INT_MAP ;
 scalar_t__ PSR_PCI_INT_DIAG ;
 scalar_t__ PSR_PWRMGT_INT_MAP ;
 scalar_t__ PSR_SCSI_INT_CLR ;
 scalar_t__ PSR_SCSI_INT_MAP ;
 scalar_t__ PSR_TIMER0_INT_MAP ;
 scalar_t__ PSR_TIMER1_INT_MAP ;
 int PSYCHO_MAX_INO ;
 scalar_t__ PSYCHO_MODE_PSYCHO ;
 scalar_t__ PSYCHO_MODE_SABRE ;
 int PSYCHO_READ8 (struct psycho_softc*,scalar_t__) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
psycho_find_intrmap(struct psycho_softc *sc, u_int ino,
    bus_addr_t *intrmapptr, bus_addr_t *intrclrptr, bus_addr_t *intrdiagptr)
{
 bus_addr_t intrclr, intrmap;
 uint64_t diag;
 int found;
 if (ino > PSYCHO_MAX_INO) {
  device_printf(sc->sc_dev, "out of range INO %d requested\n",
      ino);
  return (0);
 }

 found = 0;

 diag = PSYCHO_READ8(sc, PSR_OBIO_INT_DIAG);
 for (intrmap = PSR_SCSI_INT_MAP, intrclr = PSR_SCSI_INT_CLR;
     intrmap <= PSR_PWRMGT_INT_MAP; intrmap += 8, intrclr += 8,
     diag >>= 2) {
  if (sc->sc_mode == PSYCHO_MODE_SABRE &&
      (intrmap == PSR_TIMER0_INT_MAP ||
      intrmap == PSR_TIMER1_INT_MAP ||
      intrmap == PSR_PCIBERR_INT_MAP ||
      intrmap == PSR_PWRMGT_INT_MAP))
   continue;
  if (INTINO(PSYCHO_READ8(sc, intrmap)) == ino) {
   diag &= 2;
   found = 1;
   break;
  }
 }

 if (!found) {
  diag = PSYCHO_READ8(sc, PSR_PCI_INT_DIAG);

  for (intrmap = PSR_PCIA0_INT_MAP, intrclr = PSR_PCIA0_INT_CLR;
      intrmap <= PSR_PCIB3_INT_MAP; intrmap += 8, intrclr += 32,
      diag >>= 8) {
   if (sc->sc_mode == PSYCHO_MODE_PSYCHO &&
       (intrmap == PSR_PCIA2_INT_MAP ||
       intrmap == PSR_PCIA3_INT_MAP))
    continue;
   if (((PSYCHO_READ8(sc, intrmap) ^ ino) & 0x3c) == 0) {
    intrclr += 8 * (ino & 3);
    diag = (diag >> ((ino & 3) * 2)) & 2;
    found = 1;
    break;
   }
  }
 }
 if (intrmapptr != ((void*)0))
  *intrmapptr = intrmap;
 if (intrclrptr != ((void*)0))
  *intrclrptr = intrclr;
 if (intrdiagptr != ((void*)0))
  *intrdiagptr = diag;
 return (found);
}
