
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {scalar_t__ bge_asf_mode; } ;


 int BGE_FW_DRV_STATE_START ;
 int BGE_FW_DRV_STATE_UNLOAD ;


 int BGE_SRAM_FW_DRV_STATE_MB ;
 int bge_writemem_ind (struct bge_softc*,int ,int ) ;

__attribute__((used)) static void
bge_sig_legacy(struct bge_softc *sc, int type)
{

 if (sc->bge_asf_mode) {
  switch (type) {
  case 128:
   bge_writemem_ind(sc, BGE_SRAM_FW_DRV_STATE_MB,
       BGE_FW_DRV_STATE_START);
   break;
  case 129:
   bge_writemem_ind(sc, BGE_SRAM_FW_DRV_STATE_MB,
       BGE_FW_DRV_STATE_UNLOAD);
   break;
  }
 }
}
