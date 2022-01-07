
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ ECORE_CPU_TO_LE32 (int) ;
 scalar_t__ GUNZIP_BUF (struct bxe_softc*) ;
 int GUNZIP_OUTLEN (struct bxe_softc*) ;
 int ecore_gunzip (struct bxe_softc*,int const*,int) ;
 int * ecore_sel_blob (struct bxe_softc*,int,int const*) ;
 int ecore_write_big_buf_wb (struct bxe_softc*,int,int) ;

__attribute__((used)) static void ecore_init_wr_zp(struct bxe_softc *sc, uint32_t addr, uint32_t len,
        uint32_t blob_off)
{
 const uint8_t *data = ((void*)0);
 int rc;
 uint32_t i;

 data = ecore_sel_blob(sc, addr, data) + blob_off*4;

 rc = ecore_gunzip(sc, data, len);
 if (rc)
  return;


 len = GUNZIP_OUTLEN(sc);
 for (i = 0; i < len; i++)
  ((uint32_t *)GUNZIP_BUF(sc))[i] = (uint32_t)
    ECORE_CPU_TO_LE32(((uint32_t *)GUNZIP_BUF(sc))[i]);

 ecore_write_big_buf_wb(sc, addr, len);
}
