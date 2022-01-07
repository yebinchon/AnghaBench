
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct rx_tpa_end_cmpl {int agg_bufs_v1; } ;
struct rx_pkt_cmpl {int agg_bufs_v1; } ;
struct cmpl_base {int type; } ;
struct bnxt_softc {int dev; struct bnxt_cp_ring* rx_cp_rings; } ;
struct TYPE_2__ {scalar_t__ vaddr; } ;
struct bnxt_cp_ring {size_t cons; int v_bit; TYPE_1__ ring; } ;
typedef int qidx_t ;


 size_t CMPL_BASE_TYPE_MASK ;




 int CMPL_PREFETCH_NEXT (struct bnxt_cp_ring*,size_t) ;
 int CMP_VALID (struct cmpl_base*,int) ;
 int NEXT_CP_CONS_V (TYPE_1__*,size_t,int) ;
 int RX_PKT_CMPL_AGG_BUFS_MASK ;
 int RX_PKT_CMPL_AGG_BUFS_SFT ;
 int RX_TPA_END_CMPL_AGG_BUFS_MASK ;
 int RX_TPA_END_CMPL_AGG_BUFS_SFT ;
 int device_printf (int ,char*,size_t,size_t) ;
 size_t le16toh (int ) ;

__attribute__((used)) static int
bnxt_isc_rxd_available(void *sc, uint16_t rxqid, qidx_t idx, qidx_t budget)
{
 struct bnxt_softc *softc = (struct bnxt_softc *)sc;
 struct bnxt_cp_ring *cpr = &softc->rx_cp_rings[rxqid];
 struct rx_pkt_cmpl *rcp;
 struct rx_tpa_end_cmpl *rtpae;
 struct cmpl_base *cmp = (struct cmpl_base *)cpr->ring.vaddr;
 int avail = 0;
 uint32_t cons = cpr->cons;
 bool v_bit = cpr->v_bit;
 uint8_t ags;
 int i;
 uint16_t type;

 for (;;) {
  NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
  CMPL_PREFETCH_NEXT(cpr, cons);

  if (!CMP_VALID(&cmp[cons], v_bit))
   goto cmpl_invalid;

  type = le16toh(cmp[cons].type) & CMPL_BASE_TYPE_MASK;
  switch (type) {
  case 130:
   rcp = (void *)&cmp[cons];
   ags = (rcp->agg_bufs_v1 & RX_PKT_CMPL_AGG_BUFS_MASK) >>
       RX_PKT_CMPL_AGG_BUFS_SFT;
   NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
   CMPL_PREFETCH_NEXT(cpr, cons);

   if (!CMP_VALID(&cmp[cons], v_bit))
    goto cmpl_invalid;


   for (i=0; i<ags; i++) {
    NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
    CMPL_PREFETCH_NEXT(cpr, cons);
    if (!CMP_VALID(&cmp[cons], v_bit))
     goto cmpl_invalid;
   }
   avail++;
   break;
  case 129:
   rtpae = (void *)&cmp[cons];
   ags = (rtpae->agg_bufs_v1 &
       RX_TPA_END_CMPL_AGG_BUFS_MASK) >>
       RX_TPA_END_CMPL_AGG_BUFS_SFT;
   NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
   CMPL_PREFETCH_NEXT(cpr, cons);

   if (!CMP_VALID(&cmp[cons], v_bit))
    goto cmpl_invalid;

   for (i=0; i<ags; i++) {
    NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
    CMPL_PREFETCH_NEXT(cpr, cons);
    if (!CMP_VALID(&cmp[cons], v_bit))
     goto cmpl_invalid;
   }
   avail++;
   break;
  case 128:
   NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
   CMPL_PREFETCH_NEXT(cpr, cons);

   if (!CMP_VALID(&cmp[cons], v_bit))
    goto cmpl_invalid;
   break;
  case 131:
   break;
  default:
   device_printf(softc->dev,
       "Unhandled completion type %d on RXQ %d\n",
       type, rxqid);


   if (type & 1) {
    NEXT_CP_CONS_V(&cpr->ring, cons, v_bit);
    CMPL_PREFETCH_NEXT(cpr, cons);

    if (!CMP_VALID(&cmp[cons], v_bit))
     goto cmpl_invalid;
   }
   break;
  }
  if (avail > budget)
   break;
 }
cmpl_invalid:

 return avail;
}
