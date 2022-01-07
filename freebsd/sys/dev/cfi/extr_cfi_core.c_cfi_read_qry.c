
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct cfi_softc {int sc_width; } ;


 int CFI_QRY_CMD_ADDR ;
 int CFI_QRY_CMD_DATA ;
 int cfi_read (struct cfi_softc*,int) ;
 int cfi_reset_default (struct cfi_softc*) ;
 int cfi_write (struct cfi_softc*,int,int ) ;

uint8_t
cfi_read_qry(struct cfi_softc *sc, u_int ofs)
{
 uint8_t val;

 cfi_write(sc, CFI_QRY_CMD_ADDR * sc->sc_width, CFI_QRY_CMD_DATA);
 val = cfi_read(sc, ofs * sc->sc_width);
 cfi_reset_default(sc);
 return (val);
}
