
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsmb_softc {int io_res; int poll; } ;


 int INTSMB_LOCK_ASSERT (struct intsmb_softc*) ;
 int PIIX4_SMBHSTCNT ;
 unsigned char PIIX4_SMBHSTCNT_INTREN ;
 unsigned char PIIX4_SMBHSTCNT_START ;
 unsigned char bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,unsigned char) ;
 int cold ;

__attribute__((used)) static void
intsmb_start(struct intsmb_softc *sc, unsigned char cmd, int nointr)
{
 unsigned char tmp;

 INTSMB_LOCK_ASSERT(sc);
 tmp = bus_read_1(sc->io_res, PIIX4_SMBHSTCNT);
 tmp &= 0xe0;
 tmp |= cmd;
 tmp |= PIIX4_SMBHSTCNT_START;


 if (!sc->poll && !cold && !nointr)
  tmp |= PIIX4_SMBHSTCNT_INTREN;
 bus_write_1(sc->io_res, PIIX4_SMBHSTCNT, tmp);
}
