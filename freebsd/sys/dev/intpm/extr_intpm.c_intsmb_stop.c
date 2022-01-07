
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsmb_softc {int io_res; scalar_t__ isbusy; int dev; int lock; scalar_t__ poll; } ;


 int EWOULDBLOCK ;
 int INTSMB_LOCK_ASSERT (struct intsmb_softc*) ;
 int PCATCH ;
 int PIIX4_SMBHSTSTAT_BUSY ;
 int PIIX4_SMBHSTSTAT_INTR ;
 int PIIX4_SMBHSTSTS ;
 int PIIX4_SMBSLVCNT ;
 int PIIX4_SMBSLVCNT_ALTEN ;
 int PWAIT ;
 int SMB_EABORT ;
 int SMB_ETIMEOUT ;
 int bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,int ) ;
 scalar_t__ cold ;
 int device_printf (int ,char*) ;
 int hz ;
 int intsmb_error (int ,int) ;
 int intsmb_stop_poll (struct intsmb_softc*) ;
 int msleep (struct intsmb_softc*,int *,int,char*,int) ;

__attribute__((used)) static int
intsmb_stop(struct intsmb_softc *sc)
{
 int error, status;

 INTSMB_LOCK_ASSERT(sc);

 if (sc->poll || cold)

  return (intsmb_stop_poll(sc));

 error = msleep(sc, &sc->lock, PWAIT | PCATCH, "SMBWAI", hz / 8);
 if (error == 0) {
  status = bus_read_1(sc->io_res, PIIX4_SMBHSTSTS);
  if (!(status & PIIX4_SMBHSTSTAT_BUSY)) {
   error = intsmb_error(sc->dev, status);
   if (error == 0 && !(status & PIIX4_SMBHSTSTAT_INTR))
    device_printf(sc->dev, "unknown cause why?\n");




   return (error);
  }
 }


 sc->isbusy = 0;


 bus_write_1(sc->io_res, PIIX4_SMBSLVCNT, PIIX4_SMBSLVCNT_ALTEN);
 if (error == EWOULDBLOCK)
  return (SMB_ETIMEOUT);
 else
  return (SMB_EABORT);
}
