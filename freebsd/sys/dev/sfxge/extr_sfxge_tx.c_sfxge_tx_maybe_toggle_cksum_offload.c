
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct sfxge_txq {int hw_cksum_flags; size_t n_pend_desc; int common; int * pend_desc; } ;
struct sfxge_tx_mapping {int dummy; } ;
struct TYPE_2__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef int efx_desc_t ;


 int CSUM_DELAY_DATA ;
 int CSUM_DELAY_DATA_IPV6 ;
 int CSUM_DELAY_IP ;
 int CSUM_TSO ;
 int EFX_TXQ_CKSUM_IPV4 ;
 int EFX_TXQ_CKSUM_TCPUDP ;
 int efx_tx_qdesc_checksum_create (int ,int,int *) ;
 int sfxge_next_stmp (struct sfxge_txq*,struct sfxge_tx_mapping**) ;

__attribute__((used)) static int
sfxge_tx_maybe_toggle_cksum_offload(struct sfxge_txq *txq, struct mbuf *mbuf,
        struct sfxge_tx_mapping **pstmp)
{
 uint16_t new_hw_cksum_flags;
 efx_desc_t *desc;

 if (mbuf->m_pkthdr.csum_flags &
     (CSUM_DELAY_DATA | CSUM_DELAY_DATA_IPV6 | CSUM_TSO)) {





  new_hw_cksum_flags = EFX_TXQ_CKSUM_IPV4 | EFX_TXQ_CKSUM_TCPUDP;
 } else if (mbuf->m_pkthdr.csum_flags & CSUM_DELAY_IP) {
  new_hw_cksum_flags = EFX_TXQ_CKSUM_IPV4;
 } else {
  new_hw_cksum_flags = 0;
 }

 if (new_hw_cksum_flags == txq->hw_cksum_flags)
  return (0);

 desc = &txq->pend_desc[txq->n_pend_desc];
 efx_tx_qdesc_checksum_create(txq->common, new_hw_cksum_flags, desc);
 txq->hw_cksum_flags = new_hw_cksum_flags;
 txq->n_pend_desc++;

 sfxge_next_stmp(txq, pstmp);

 return (1);
}
