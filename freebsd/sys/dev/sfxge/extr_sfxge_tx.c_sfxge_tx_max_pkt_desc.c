
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfxge_softc {int enp; scalar_t__ txq_dynamic_cksum_toggle_supported; } ;
typedef enum sfxge_txq_type { ____Placeholder_sfxge_txq_type } sfxge_txq_type ;
struct TYPE_2__ {scalar_t__ enc_hw_tx_insert_vlan_enabled; } ;


 scalar_t__ EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX ;
 int EFX_TX_FATSOV2_OPT_NDESCS ;
 unsigned int MAX (unsigned int,unsigned int) ;
 unsigned int SFXGE_FATSOV1 ;
 unsigned int SFXGE_FATSOV2 ;
 int SFXGE_TSO_MAX_SEGS ;
 int SFXGE_TXQ_IP_TCP_UDP_CKSUM ;
 unsigned int SFXGE_TX_MAPPING_MAX_SEG ;
 TYPE_1__* efx_nic_cfg_get (int ) ;
 int howmany (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int
sfxge_tx_max_pkt_desc(const struct sfxge_softc *sc, enum sfxge_txq_type type,
        unsigned int tso_fw_assisted)
{

 unsigned int max_descs = SFXGE_TX_MAPPING_MAX_SEG;
 unsigned int sw_tso_max_descs;
 unsigned int fa_tso_v1_max_descs = 0;
 unsigned int fa_tso_v2_max_descs = 0;


 if (sc->txq_dynamic_cksum_toggle_supported)
  max_descs++;


 if (efx_nic_cfg_get(sc->enp)->enc_hw_tx_insert_vlan_enabled)
  max_descs++;

 if (type == SFXGE_TXQ_IP_TCP_UDP_CKSUM) {






  sw_tso_max_descs = SFXGE_TSO_MAX_SEGS * 2 - 1;



  if (tso_fw_assisted & SFXGE_FATSOV1)
   fa_tso_v1_max_descs =
       sw_tso_max_descs + SFXGE_TSO_MAX_SEGS;





  if (tso_fw_assisted & SFXGE_FATSOV2) {
   fa_tso_v2_max_descs =
       howmany(SFXGE_TX_MAPPING_MAX_SEG,
        EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX - 1) *
       (EFX_TX_FATSOV2_OPT_NDESCS + 1) - 1;
  }

  max_descs += MAX(sw_tso_max_descs,
     MAX(fa_tso_v1_max_descs, fa_tso_v2_max_descs));
 }

 return (max_descs);
}
