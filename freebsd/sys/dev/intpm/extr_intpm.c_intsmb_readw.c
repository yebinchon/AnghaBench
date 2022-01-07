
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct intsmb_softc {int io_res; } ;
typedef int device_t ;


 int INTSMB_LOCK (struct intsmb_softc*) ;
 int INTSMB_UNLOCK (struct intsmb_softc*) ;
 char LSB ;
 int PIIX4_SMBHSTADD ;
 int PIIX4_SMBHSTCMD ;
 int PIIX4_SMBHSTCNT_PROT_WDATA ;
 int PIIX4_SMBHSTDAT0 ;
 int PIIX4_SMBHSTDAT1 ;
 int bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,char) ;
 struct intsmb_softc* device_get_softc (int ) ;
 int intsmb_free (struct intsmb_softc*) ;
 int intsmb_start (struct intsmb_softc*,int ,int ) ;
 int intsmb_stop (struct intsmb_softc*) ;

__attribute__((used)) static int
intsmb_readw(device_t dev, u_char slave, char cmd, short *word)
{
 struct intsmb_softc *sc = device_get_softc(dev);
 int error;

 INTSMB_LOCK(sc);
 error = intsmb_free(sc);
 if (error) {
  INTSMB_UNLOCK(sc);
  return (error);
 }
 bus_write_1(sc->io_res, PIIX4_SMBHSTADD, slave | LSB);
 bus_write_1(sc->io_res, PIIX4_SMBHSTCMD, cmd);
 intsmb_start(sc, PIIX4_SMBHSTCNT_PROT_WDATA, 0);
 error = intsmb_stop(sc);
 if (error == 0) {
  *word = bus_read_1(sc->io_res, PIIX4_SMBHSTDAT0);
  *word |= bus_read_1(sc->io_res, PIIX4_SMBHSTDAT1) << 8;
 }
 INTSMB_UNLOCK(sc);
 return (error);
}
