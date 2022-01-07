
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_asf_mode; } ;


 int ASF_NEW_HANDSHAKE ;
 int BGE_FW_DRV_STATE_START ;
 int BGE_FW_DRV_STATE_SUSPEND ;
 int BGE_FW_DRV_STATE_UNLOAD ;



 int BGE_SRAM_FW_DRV_STATE_MB ;
 int BGE_SRAM_FW_MB ;
 int BGE_SRAM_FW_MB_MAGIC ;
 int bge_ape_driver_state_change (struct bge_softc*,int) ;
 int bge_writemem_ind (struct bge_softc*,int ,int ) ;

__attribute__((used)) static void
bge_sig_pre_reset(struct bge_softc *sc, int type)
{




 if (sc->bge_asf_mode)
  bge_writemem_ind(sc, BGE_SRAM_FW_MB, BGE_SRAM_FW_MB_MAGIC);

 if (sc->bge_asf_mode & ASF_NEW_HANDSHAKE) {
  switch (type) {
  case 129:
   bge_writemem_ind(sc, BGE_SRAM_FW_DRV_STATE_MB,
       BGE_FW_DRV_STATE_START);
   break;
  case 130:
   bge_writemem_ind(sc, BGE_SRAM_FW_DRV_STATE_MB,
       BGE_FW_DRV_STATE_UNLOAD);
   break;
  case 128:
   bge_writemem_ind(sc, BGE_SRAM_FW_DRV_STATE_MB,
       BGE_FW_DRV_STATE_SUSPEND);
   break;
  }
 }

 if (type == 129 || type == 128)
  bge_ape_driver_state_change(sc, type);
}
