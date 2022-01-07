
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rx_tpa_end_cmpl {size_t agg_id; size_t agg_bufs_v1; int opaque; int len; } ;
struct rx_abuf_cmpl {int opaque; int len; } ;
struct bnxt_softc {TYPE_1__* rx_rings; } ;
struct TYPE_12__ {int metadata; int flags2; } ;
struct TYPE_11__ {int opaque; int len; int rss_hash_type; int rss_hash; int flags_type; } ;
struct bnxt_full_tpa_start {TYPE_3__ high; TYPE_2__ low; } ;
struct TYPE_15__ {scalar_t__ vaddr; } ;
struct bnxt_cp_ring {size_t cons; TYPE_8__ ring; int v_bit; } ;
typedef TYPE_5__* if_rxd_info_t ;
struct TYPE_14__ {size_t iri_qsidx; int iri_flowid; size_t iri_nfrags; int iri_len; int iri_vtag; int iri_csum_data; TYPE_4__* iri_frags; void* iri_cidx; int iri_csum_flags; int iri_flags; int iri_rsstype; } ;
struct TYPE_13__ {int irf_flid; int irf_idx; int irf_len; } ;
struct TYPE_10__ {struct bnxt_full_tpa_start* tpa_start; } ;


 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_L4_CALC ;
 int CSUM_L4_VALID ;
 int M_HASHTYPE_NONE ;
 int M_VLANTAG ;
 int NEXT_CP_CONS_V (TYPE_8__*,size_t,int ) ;
 void* RING_NEXT (TYPE_8__*,void*) ;
 size_t RX_TPA_END_CMPL_AGG_BUFS_MASK ;
 size_t RX_TPA_END_CMPL_AGG_BUFS_SFT ;
 size_t RX_TPA_END_CMPL_AGG_ID_MASK ;
 size_t RX_TPA_END_CMPL_AGG_ID_SFT ;
 int RX_TPA_START_CMPL_FLAGS2_IP_CS_CALC ;
 int RX_TPA_START_CMPL_FLAGS2_L4_CS_CALC ;
 int RX_TPA_START_CMPL_FLAGS2_META_FORMAT_MASK ;
 int RX_TPA_START_CMPL_FLAGS2_META_FORMAT_VLAN ;
 int RX_TPA_START_CMPL_FLAGS_RSS_VALID ;
 int RX_TPA_START_CMPL_METADATA_DE ;
 int RX_TPA_START_CMPL_METADATA_PRI_MASK ;
 int RX_TPA_START_CMPL_METADATA_VID_MASK ;
 int bnxt_set_rsstype (TYPE_5__*,int ) ;
 int le16toh (int ) ;
 int le32toh (int ) ;

__attribute__((used)) static int
bnxt_pkt_get_tpa(struct bnxt_softc *softc, if_rxd_info_t ri,
    struct bnxt_cp_ring *cpr, uint16_t flags_type)
{
 struct rx_tpa_end_cmpl *agend =
     &((struct rx_tpa_end_cmpl *)cpr->ring.vaddr)[cpr->cons];
 struct rx_abuf_cmpl *acp;
 struct bnxt_full_tpa_start *tpas;
 uint32_t flags2;
 uint8_t ags;
 uint8_t agg_id;
 int i;


 agg_id = (agend->agg_id & RX_TPA_END_CMPL_AGG_ID_MASK) >>
     RX_TPA_END_CMPL_AGG_ID_SFT;
 tpas = &(softc->rx_rings[ri->iri_qsidx].tpa_start[agg_id]);


 if (le16toh(tpas->low.flags_type) & RX_TPA_START_CMPL_FLAGS_RSS_VALID) {
  ri->iri_flowid = le32toh(tpas->low.rss_hash);
  bnxt_set_rsstype(ri, tpas->low.rss_hash_type);
 }
 else {
  ri->iri_rsstype = M_HASHTYPE_NONE;
 }
 ags = (agend->agg_bufs_v1 & RX_TPA_END_CMPL_AGG_BUFS_MASK) >>
     RX_TPA_END_CMPL_AGG_BUFS_SFT;
 ri->iri_nfrags = ags + 1;

 ri->iri_frags[0].irf_flid = ((tpas->low.opaque >> 16) & 0xff);
 ri->iri_frags[0].irf_idx = (tpas->low.opaque & 0xffff);
 ri->iri_frags[0].irf_len = le16toh(tpas->low.len);
 ri->iri_len = le16toh(tpas->low.len);


 NEXT_CP_CONS_V(&cpr->ring, cpr->cons, cpr->v_bit);
 ri->iri_cidx = RING_NEXT(&cpr->ring, ri->iri_cidx);

 flags2 = le32toh(tpas->high.flags2);
 if ((flags2 & RX_TPA_START_CMPL_FLAGS2_META_FORMAT_MASK) ==
     RX_TPA_START_CMPL_FLAGS2_META_FORMAT_VLAN) {
  ri->iri_flags |= M_VLANTAG;

  ri->iri_vtag = le32toh(tpas->high.metadata) &
      (RX_TPA_START_CMPL_METADATA_VID_MASK |
      RX_TPA_START_CMPL_METADATA_DE |
      RX_TPA_START_CMPL_METADATA_PRI_MASK);
 }
 if (flags2 & RX_TPA_START_CMPL_FLAGS2_IP_CS_CALC) {
  ri->iri_csum_flags |= CSUM_IP_CHECKED;
  ri->iri_csum_flags |= CSUM_IP_VALID;
 }
 if (flags2 & RX_TPA_START_CMPL_FLAGS2_L4_CS_CALC) {
  ri->iri_csum_flags |= CSUM_L4_CALC;
  ri->iri_csum_flags |= CSUM_L4_VALID;
  ri->iri_csum_data = 0xffff;
 }


 for (i=1; i < ri->iri_nfrags; i++) {
  NEXT_CP_CONS_V(&cpr->ring, cpr->cons, cpr->v_bit);
  ri->iri_cidx = RING_NEXT(&cpr->ring, ri->iri_cidx);
  acp = &((struct rx_abuf_cmpl *)cpr->ring.vaddr)[cpr->cons];


  ri->iri_frags[i].irf_flid = ((acp->opaque >> 16) & 0xff);
  ri->iri_frags[i].irf_idx = (acp->opaque & 0xffff);
  ri->iri_frags[i].irf_len = le16toh(acp->len);
  ri->iri_len += le16toh(acp->len);
 }


 ri->iri_nfrags++;

 ri->iri_frags[i].irf_flid = ((agend->opaque >> 16) & 0xff);
 ri->iri_frags[i].irf_idx = (agend->opaque & 0xffff);
 ri->iri_frags[i].irf_len = le16toh(agend->len);
 ri->iri_len += le16toh(agend->len);

 return 0;
}
