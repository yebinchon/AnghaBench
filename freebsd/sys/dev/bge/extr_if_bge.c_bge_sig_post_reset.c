
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_asf_mode; } ;


 int ASF_NEW_HANDSHAKE ;
 int BGE_FW_DRV_STATE_START_DONE ;
 int BGE_FW_DRV_STATE_UNLOAD_DONE ;


 int BGE_SRAM_FW_DRV_STATE_MB ;
 int bge_ape_driver_state_change (struct bge_softc*,int) ;
 int bge_writemem_ind (struct bge_softc*,int ,int ) ;

__attribute__((used)) static void
bge_sig_post_reset(struct bge_softc *sc, int type)
{

 if (sc->bge_asf_mode & ASF_NEW_HANDSHAKE) {
  switch (type) {
  case 128:
   bge_writemem_ind(sc, BGE_SRAM_FW_DRV_STATE_MB,
       BGE_FW_DRV_STATE_START_DONE);

   break;
  case 129:
   bge_writemem_ind(sc, BGE_SRAM_FW_DRV_STATE_MB,
       BGE_FW_DRV_STATE_UNLOAD_DONE);
   break;
  }
 }
 if (type == 129)
  bge_ape_driver_state_change(sc, type);
}
