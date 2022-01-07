
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsmb_softc {int isbusy; int io_res; } ;


 int INTSMB_LOCK_ASSERT (struct intsmb_softc*) ;
 int PIIX4_SMBHSTSTAT_BUSC ;
 int PIIX4_SMBHSTSTAT_BUSY ;
 int PIIX4_SMBHSTSTAT_ERR ;
 int PIIX4_SMBHSTSTAT_FAIL ;
 int PIIX4_SMBHSTSTAT_INTR ;
 int PIIX4_SMBHSTSTS ;
 int PIIX4_SMBSLVCNT ;
 int PIIX4_SMBSLVSTS ;
 int PIIX4_SMBSLVSTS_BUSY ;
 int SMB_EBUSY ;
 int bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,int) ;

__attribute__((used)) static int
intsmb_free(struct intsmb_softc *sc)
{

 INTSMB_LOCK_ASSERT(sc);
 if ((bus_read_1(sc->io_res, PIIX4_SMBHSTSTS) & PIIX4_SMBHSTSTAT_BUSY) ||



     sc->isbusy)
  return (SMB_EBUSY);

 sc->isbusy = 1;


 bus_write_1(sc->io_res, PIIX4_SMBSLVCNT, 0);


 bus_write_1(sc->io_res, PIIX4_SMBHSTSTS,
     PIIX4_SMBHSTSTAT_INTR | PIIX4_SMBHSTSTAT_ERR |
     PIIX4_SMBHSTSTAT_BUSC | PIIX4_SMBHSTSTAT_FAIL);
 return (0);
}
