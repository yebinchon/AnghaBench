
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct tcphdr {int th_flags; int th_seq; } ;
struct sfxge_txq {size_t n_pend_desc; unsigned int ptr_mask; int tso_packets; int common; int * pend_desc; int packet_dma_tag; int tso_long_headers; struct sfxge_tx_mapping* stmp; TYPE_1__* tsoh_buffer; } ;
struct TYPE_4__ {unsigned int heap_buf; } ;
struct sfxge_tx_mapping {scalar_t__ flags; TYPE_2__ u; int map; } ;
struct sfxge_tso_state {int fw_assisted; unsigned int seqnum; unsigned int seg_size; int tcp_flags; unsigned int out_len; unsigned int header_len; unsigned int tcph_off; unsigned int nh_off; void* protocol; unsigned int packet_space; void* segs_space; int mbuf; int header_desc; int packet_id; } ;
struct ip6_hdr {void* ip6_plen; } ;
struct ip {void* ip_len; } ;
typedef int efx_desc_t ;
typedef unsigned int caddr_t ;
typedef int bus_dmamap_t ;
struct TYPE_3__ {unsigned int esm_base; scalar_t__ esm_addr; int esm_map; } ;


 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 void* EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX ;
 unsigned int EFX_TX_FATSOV2_OPT_NDESCS ;
 int EINVAL ;
 int ENOMEM ;
 unsigned int ETHERTYPE_IP ;
 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int M_SFXGE ;
 int SFXGE_FATSOV2 ;
 int TH_FIN ;
 int TH_PUSH ;
 unsigned int TSOH_PER_PAGE ;
 unsigned int TSOH_STD_SIZE ;
 scalar_t__ TX_BUF_UNMAP ;
 void* UINT_MAX ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ __predict_true (int) ;
 int bus_dmamap_load (int ,int ,unsigned int,unsigned int,int ,scalar_t__*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int efx_tx_qdesc_dma_create (int ,scalar_t__,unsigned int,int ,int *) ;
 int efx_tx_qdesc_tso2_create (int ,int ,int ,unsigned int,unsigned int,int *,unsigned int) ;
 int efx_tx_qdesc_tso_create (int ,int ,unsigned int,int,int ) ;
 int free (unsigned int,int ) ;
 int htonl (unsigned int) ;
 void* htons (unsigned int) ;
 int m_copydata (int ,int ,unsigned int,unsigned int) ;
 unsigned int malloc (unsigned int,int ,int ) ;
 int tso_map_long_header ;

__attribute__((used)) static int tso_start_new_packet(struct sfxge_txq *txq,
    struct sfxge_tso_state *tso,
    unsigned int *idp)
{
 unsigned int id = *idp;
 struct tcphdr *tsoh_th;
 unsigned ip_length;
 caddr_t header;
 uint64_t dma_addr;
 bus_dmamap_t map;
 efx_desc_t *desc;
 int rc;

 if (tso->fw_assisted) {
  if (tso->fw_assisted & SFXGE_FATSOV2) {

   desc = &txq->pend_desc[txq->n_pend_desc];
   efx_tx_qdesc_tso2_create(txq->common,
       tso->packet_id,
       0,
       tso->seqnum,
       tso->seg_size,
       desc,
       EFX_TX_FATSOV2_OPT_NDESCS);
   desc += EFX_TX_FATSOV2_OPT_NDESCS;
   txq->n_pend_desc += EFX_TX_FATSOV2_OPT_NDESCS;
   KASSERT(txq->stmp[id].flags == 0, ("stmp flags are not 0"));
   id = (id + EFX_TX_FATSOV2_OPT_NDESCS) & txq->ptr_mask;

   tso->segs_space =
       EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX - 1;
  } else {
   uint8_t tcp_flags = tso->tcp_flags;

   if (tso->out_len > tso->seg_size)
    tcp_flags &= ~(TH_FIN | TH_PUSH);


   desc = &txq->pend_desc[txq->n_pend_desc++];
   efx_tx_qdesc_tso_create(txq->common,
      tso->packet_id,
      tso->seqnum,
      tcp_flags,
      desc++);
   KASSERT(txq->stmp[id].flags == 0, ("stmp flags are not 0"));
   id = (id + 1) & txq->ptr_mask;

   tso->seqnum += tso->seg_size;
   tso->segs_space = UINT_MAX;
  }


  *desc = tso->header_desc;
  txq->n_pend_desc++;
  KASSERT(txq->stmp[id].flags == 0, ("stmp flags are not 0"));
  id = (id + 1) & txq->ptr_mask;
 } else {

  if (__predict_true(tso->header_len <= TSOH_STD_SIZE)) {
   unsigned int page_index = (id / 2) / TSOH_PER_PAGE;
   unsigned int buf_index = (id / 2) % TSOH_PER_PAGE;

   header = (txq->tsoh_buffer[page_index].esm_base +
      buf_index * TSOH_STD_SIZE);
   dma_addr = (txq->tsoh_buffer[page_index].esm_addr +
        buf_index * TSOH_STD_SIZE);
   map = txq->tsoh_buffer[page_index].esm_map;

   KASSERT(txq->stmp[id].flags == 0,
    ("stmp flags are not 0"));
  } else {
   struct sfxge_tx_mapping *stmp = &txq->stmp[id];


   header = malloc(tso->header_len, M_SFXGE, M_NOWAIT);
   if (__predict_false(!header))
    return (ENOMEM);
   rc = bus_dmamap_load(txq->packet_dma_tag, stmp->map,
          header, tso->header_len,
          tso_map_long_header, &dma_addr,
          BUS_DMA_NOWAIT);
   if (__predict_false(dma_addr == 0)) {
    if (rc == 0) {

     bus_dmamap_unload(txq->packet_dma_tag,
         stmp->map);
     rc = EINVAL;
    }
    free(header, M_SFXGE);
    return (rc);
   }
   map = stmp->map;

   txq->tso_long_headers++;
   stmp->u.heap_buf = header;
   stmp->flags = TX_BUF_UNMAP;
  }

  tsoh_th = (struct tcphdr *)(header + tso->tcph_off);


  m_copydata(tso->mbuf, 0, tso->header_len, header);

  tsoh_th->th_seq = htonl(tso->seqnum);
  tso->seqnum += tso->seg_size;
  if (tso->out_len > tso->seg_size) {

   ip_length = tso->header_len - tso->nh_off + tso->seg_size;
   tsoh_th->th_flags &= ~(TH_FIN | TH_PUSH);
  } else {

   ip_length = tso->header_len - tso->nh_off + tso->out_len;
  }

  if (tso->protocol == htons(ETHERTYPE_IP)) {
   struct ip *tsoh_iph = (struct ip *)(header + tso->nh_off);
   tsoh_iph->ip_len = htons(ip_length);



  } else {
   struct ip6_hdr *tsoh_iph =
    (struct ip6_hdr *)(header + tso->nh_off);
   tsoh_iph->ip6_plen = htons(ip_length - sizeof(*tsoh_iph));
  }


  bus_dmamap_sync(txq->packet_dma_tag, map, BUS_DMASYNC_PREWRITE);


  desc = &txq->pend_desc[txq->n_pend_desc++];
  efx_tx_qdesc_dma_create(txq->common,
     dma_addr,
     tso->header_len,
     0,
     desc);
  id = (id + 1) & txq->ptr_mask;

  tso->segs_space = UINT_MAX;
 }
 tso->packet_space = tso->seg_size;
 txq->tso_packets++;
 *idp = id;

 return (0);
}
