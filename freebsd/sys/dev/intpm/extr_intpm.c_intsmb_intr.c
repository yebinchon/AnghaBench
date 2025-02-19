
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsmb_softc {scalar_t__ isbusy; int io_res; } ;


 int PIIX4_SMBHSTCNT ;
 int PIIX4_SMBHSTCNT_INTREN ;
 int PIIX4_SMBHSTSTAT_BUSC ;
 int PIIX4_SMBHSTSTAT_BUSY ;
 int PIIX4_SMBHSTSTAT_ERR ;
 int PIIX4_SMBHSTSTAT_FAIL ;
 int PIIX4_SMBHSTSTAT_INTR ;
 int PIIX4_SMBHSTSTS ;
 int bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,int) ;
 int wakeup (struct intsmb_softc*) ;

__attribute__((used)) static int
intsmb_intr(struct intsmb_softc *sc)
{
 int status, tmp;

 status = bus_read_1(sc->io_res, PIIX4_SMBHSTSTS);
 if (status & PIIX4_SMBHSTSTAT_BUSY)
  return (1);

 if (status & (PIIX4_SMBHSTSTAT_INTR | PIIX4_SMBHSTSTAT_ERR |
     PIIX4_SMBHSTSTAT_BUSC | PIIX4_SMBHSTSTAT_FAIL)) {

  tmp = bus_read_1(sc->io_res, PIIX4_SMBHSTCNT);
  bus_write_1(sc->io_res, PIIX4_SMBHSTCNT,
      tmp & ~PIIX4_SMBHSTCNT_INTREN);
  if (sc->isbusy) {
   sc->isbusy = 0;
   wakeup(sc);
  }
  return (0);
 }
 return (1);
}
