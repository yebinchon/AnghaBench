
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {scalar_t__ bge_asf_mode; } ;


 int BGE_FW_CMD_PAUSE ;
 int BGE_RX_CPU_DRV_EVENT ;
 int BGE_RX_CPU_EVENT ;
 int BGE_SRAM_FW_CMD_MB ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int DELAY (int) ;
 int bge_writemem_ind (struct bge_softc*,int ,int ) ;

__attribute__((used)) static void
bge_stop_fw(struct bge_softc *sc)
{
 int i;

 if (sc->bge_asf_mode) {
  bge_writemem_ind(sc, BGE_SRAM_FW_CMD_MB, BGE_FW_CMD_PAUSE);
  CSR_WRITE_4(sc, BGE_RX_CPU_EVENT,
      CSR_READ_4(sc, BGE_RX_CPU_EVENT) | BGE_RX_CPU_DRV_EVENT);

  for (i = 0; i < 100; i++ ) {
   if (!(CSR_READ_4(sc, BGE_RX_CPU_EVENT) &
       BGE_RX_CPU_DRV_EVENT))
    break;
   DELAY(10);
  }
 }
}
