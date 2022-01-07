
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bge_softc {int bge_ifp; } ;


 int BGE_NVRAMACC_ENABLE ;
 int BGE_NVRAMCMD_DONE ;
 int BGE_NVRAMSWARB_CLR1 ;
 int BGE_NVRAMSWARB_GNT1 ;
 int BGE_NVRAMSWARB_SET1 ;
 int BGE_NVRAM_ACCESS ;
 int BGE_NVRAM_ADDR ;
 int BGE_NVRAM_CMD ;
 int BGE_NVRAM_RDDATA ;
 int BGE_NVRAM_READCMD ;
 int BGE_NVRAM_SWARB ;
 int BGE_TIMEOUT ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int DELAY (int) ;
 int bswap32 (int) ;
 int if_printf (int ,char*) ;

__attribute__((used)) static uint8_t
bge_nvram_getbyte(struct bge_softc *sc, int addr, uint8_t *dest)
{
 uint32_t access, byte = 0;
 int i;


 CSR_WRITE_4(sc, BGE_NVRAM_SWARB, BGE_NVRAMSWARB_SET1);
 for (i = 0; i < 8000; i++) {
  if (CSR_READ_4(sc, BGE_NVRAM_SWARB) & BGE_NVRAMSWARB_GNT1)
   break;
  DELAY(20);
 }
 if (i == 8000)
  return (1);


 access = CSR_READ_4(sc, BGE_NVRAM_ACCESS);
 CSR_WRITE_4(sc, BGE_NVRAM_ACCESS, access | BGE_NVRAMACC_ENABLE);

 CSR_WRITE_4(sc, BGE_NVRAM_ADDR, addr & 0xfffffffc);
 CSR_WRITE_4(sc, BGE_NVRAM_CMD, BGE_NVRAM_READCMD);
 for (i = 0; i < BGE_TIMEOUT * 10; i++) {
  DELAY(10);
  if (CSR_READ_4(sc, BGE_NVRAM_CMD) & BGE_NVRAMCMD_DONE) {
   DELAY(10);
   break;
  }
 }

 if (i == BGE_TIMEOUT * 10) {
  if_printf(sc->bge_ifp, "nvram read timed out\n");
  return (1);
 }


 byte = CSR_READ_4(sc, BGE_NVRAM_RDDATA);

 *dest = (bswap32(byte) >> ((addr % 4) * 8)) & 0xFF;


 CSR_WRITE_4(sc, BGE_NVRAM_ACCESS, access);


 CSR_WRITE_4(sc, BGE_NVRAM_SWARB, BGE_NVRAMSWARB_CLR1);
 CSR_READ_4(sc, BGE_NVRAM_SWARB);

 return (0);
}
