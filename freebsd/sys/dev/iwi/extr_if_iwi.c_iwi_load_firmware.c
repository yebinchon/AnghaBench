
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
struct iwi_softc {int fw_physaddr; int sc_dev; int sc_mtx; int fw_map; int fw_dmat; int * fw_virtaddr; } ;
struct iwi_fw {int size; int name; int data; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_READ_4 (struct iwi_softc*,int ) ;
 int CSR_WRITE_4 (struct iwi_softc*,int ,int) ;
 int DELAY (int) ;
 int EIO ;
 int GETLE32 (int *) ;
 int IWI_CB_DEFAULT_CTL ;
 int IWI_CB_MAXDATALEN ;
 int IWI_CSR_AUTOINC_ADDR ;
 int IWI_CSR_AUTOINC_DATA ;
 int IWI_CSR_CTL ;
 int IWI_CSR_INTR_MASK ;
 int IWI_CSR_RST ;
 int IWI_CTL_ALLOW_STANDBY ;
 int IWI_INTR_MASK ;
 int IWI_LOCK_ASSERT (struct iwi_softc*) ;
 int IWI_RST_MASTER_DISABLED ;
 int IWI_RST_STOP_MASTER ;
 int MEM_READ_4 (struct iwi_softc*,int) ;
 int MEM_WRITE_4 (struct iwi_softc*,int,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,int ) ;
 int hz ;
 int memcpy (int *,int ,int) ;
 int min (int,int ) ;
 int msleep (struct iwi_softc*,int *,int ,char*,int ) ;

__attribute__((used)) static int
iwi_load_firmware(struct iwi_softc *sc, const struct iwi_fw *fw)
{
 u_char *p, *end;
 uint32_t sentinel, ctl, src, dst, sum, len, mlen, tmp;
 int ntries, error;

 IWI_LOCK_ASSERT(sc);


 memcpy(sc->fw_virtaddr, fw->data, fw->size);


 bus_dmamap_sync(sc->fw_dmat, sc->fw_map, BUS_DMASYNC_PREWRITE);


 MEM_WRITE_4(sc, 0x3000a0, 0x27000);






 src = sc->fw_physaddr;
 p = sc->fw_virtaddr;
 end = p + fw->size;
 CSR_WRITE_4(sc, IWI_CSR_AUTOINC_ADDR, 0x27000);

 while (p < end) {
  dst = GETLE32(p); p += 4; src += 4;
  len = GETLE32(p); p += 4; src += 4;
  p += len;

  while (len > 0) {
   mlen = min(len, IWI_CB_MAXDATALEN);

   ctl = IWI_CB_DEFAULT_CTL | mlen;
   sum = ctl ^ src ^ dst;


   CSR_WRITE_4(sc, IWI_CSR_AUTOINC_DATA, ctl);
   CSR_WRITE_4(sc, IWI_CSR_AUTOINC_DATA, src);
   CSR_WRITE_4(sc, IWI_CSR_AUTOINC_DATA, dst);
   CSR_WRITE_4(sc, IWI_CSR_AUTOINC_DATA, sum);

   src += mlen;
   dst += mlen;
   len -= mlen;
  }
 }


 sentinel = CSR_READ_4(sc, IWI_CSR_AUTOINC_ADDR);
 CSR_WRITE_4(sc, IWI_CSR_AUTOINC_DATA, 0);

 tmp = CSR_READ_4(sc, IWI_CSR_RST);
 tmp &= ~(IWI_RST_MASTER_DISABLED | IWI_RST_STOP_MASTER);
 CSR_WRITE_4(sc, IWI_CSR_RST, tmp);


 MEM_WRITE_4(sc, 0x3000a4, 0x540100);


 for (ntries = 0; ntries < 400; ntries++) {
  if (MEM_READ_4(sc, 0x3000d0) >= sentinel)
   break;
  DELAY(100);
 }

 bus_dmamap_sync(sc->fw_dmat, sc->fw_map, BUS_DMASYNC_POSTWRITE);
 if (ntries == 400) {
  device_printf(sc->sc_dev,
      "timeout processing command blocks for %s firmware\n",
      fw->name);
  return EIO;
 }


 MEM_WRITE_4(sc, 0x3000a4, 0x540c00);


 CSR_WRITE_4(sc, IWI_CSR_INTR_MASK, IWI_INTR_MASK);


 CSR_WRITE_4(sc, IWI_CSR_RST, 0);

 tmp = CSR_READ_4(sc, IWI_CSR_CTL);
 CSR_WRITE_4(sc, IWI_CSR_CTL, tmp | IWI_CTL_ALLOW_STANDBY);


 if ((error = msleep(sc, &sc->sc_mtx, 0, "iwiinit", hz)) != 0) {
  device_printf(sc->sc_dev, "timeout waiting for %s firmware "
      "initialization to complete\n", fw->name);
 }

 return error;
}
