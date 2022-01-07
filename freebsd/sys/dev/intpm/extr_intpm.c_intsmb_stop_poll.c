
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsmb_softc {int io_res; scalar_t__ isbusy; int dev; } ;


 int INTSMB_LOCK_ASSERT (struct intsmb_softc*) ;
 int PIIX4_SMBHSTCNT ;
 int PIIX4_SMBHSTCNT_INTREN ;
 int PIIX4_SMBHSTSTAT_BUSY ;
 int PIIX4_SMBHSTSTS ;
 int SMB_ETIMEOUT ;
 int bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,int) ;
 int intsmb_error (int ,int) ;

__attribute__((used)) static int
intsmb_stop_poll(struct intsmb_softc *sc)
{
 int error, i, status, tmp;

 INTSMB_LOCK_ASSERT(sc);


 for (i = 0; i < 0x7fff; i++)
  if (bus_read_1(sc->io_res, PIIX4_SMBHSTSTS) &
      PIIX4_SMBHSTSTAT_BUSY)
   break;


 for (i = 0; i < 0x7fff; i++) {
  status = bus_read_1(sc->io_res, PIIX4_SMBHSTSTS);
  if (!(status & PIIX4_SMBHSTSTAT_BUSY)) {
   sc->isbusy = 0;
   error = intsmb_error(sc->dev, status);
   return (error);
  }
 }


 sc->isbusy = 0;
 tmp = bus_read_1(sc->io_res, PIIX4_SMBHSTCNT);
 bus_write_1(sc->io_res, PIIX4_SMBHSTCNT, tmp & ~PIIX4_SMBHSTCNT_INTREN);
 return (SMB_ETIMEOUT);
}
