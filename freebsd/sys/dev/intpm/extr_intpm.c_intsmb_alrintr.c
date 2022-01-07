
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct intsmb_softc {int io_res; int dev; } ;


 int DELAY (int) ;
 int LSB ;
 int PIIX4_SMBHSTADD ;
 int PIIX4_SMBHSTCNT_PROT_BYTE ;
 int PIIX4_SMBHSTDAT0 ;
 int PIIX4_SMBSLVCNT ;
 int PIIX4_SMBSLVCNT_ALTEN ;
 int SMBALTRESP ;
 void* bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,int) ;
 int device_printf (int ,char*,...) ;
 int intsmb_free (struct intsmb_softc*) ;
 int intsmb_start (struct intsmb_softc*,int ,int) ;
 int intsmb_stop_poll (struct intsmb_softc*) ;

__attribute__((used)) static void
intsmb_alrintr(struct intsmb_softc *sc)
{
 int slvcnt;






 slvcnt = bus_read_1(sc->io_res, PIIX4_SMBSLVCNT);




 DELAY(5);
}
