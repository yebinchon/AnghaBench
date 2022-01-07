
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ds_addr; } ;
struct rxq_refill_cb_arg {TYPE_3__ seg; scalar_t__ error; } ;
struct mbuf {int dummy; } ;
struct if_rxd_update {int iru_pidx; int iru_count; } ;
typedef void* qidx_t ;
typedef TYPE_4__* iflib_fl_t ;
typedef TYPE_5__* if_ctx_t ;
typedef int * caddr_t ;
typedef int bus_dmamap_t ;
typedef int bus_addr_t ;
struct TYPE_14__ {int ifr_id; } ;
struct TYPE_13__ {int ifc_softc; int (* isc_rxd_flush ) (int ,int ,int ,int) ;int (* isc_rxd_refill ) (int ,struct if_rxd_update*) ;} ;
struct TYPE_10__ {int * ifsd_ba; int ** ifsd_cl; int * ifsd_map; struct mbuf** ifsd_m; } ;
struct TYPE_12__ {int ifl_pidx; int ifl_fragidx; void* ifl_size; int ifl_cidx; int ifl_gen; scalar_t__ ifl_zone; int* ifl_rxd_idxs; int ifl_id; TYPE_6__* ifl_rxq; TYPE_1__* ifl_ifdi; void* ifl_credits; int ** ifl_vm_addrs; int * ifl_bus_addrs; int ifl_m_enqueued; int ifl_rx_bitmap; int ifl_buf_tag; int ifl_cl_enqueued; int ifl_buf_size; TYPE_2__ ifl_sds; } ;
struct TYPE_9__ {int idi_map; int idi_tag; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int DBG_COUNTER_INC (int ) ;
 int IFLIB_MAX_RX_REFRESH ;
 int MPASS (int) ;
 int MT_NOINIT ;
 int M_NOWAIT ;
 int _rxq_refill_cb ;
 int bit_ffc (int ,int,int*) ;
 int bit_ffc_at (int ,int,int,int*) ;
 int bit_set (int ,int) ;
 int bus_dmamap_load (int ,int ,int *,int ,int ,struct rxq_refill_cb_arg*,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int fl_refills ;
 int fl_refills_large ;
 int iru_init (struct if_rxd_update*,TYPE_6__*,int ) ;
 int * m_cljget (int *,int ,int ) ;
 struct mbuf* m_gethdr (int ,int ) ;
 int rx_allocs ;
 int rxd_flush ;
 int stub1 (int ,struct if_rxd_update*) ;
 int stub2 (int ,struct if_rxd_update*) ;
 int stub3 (int ,int ,int ,int) ;
 int uma_zfree (scalar_t__,int *) ;
 scalar_t__ zone_pack ;

__attribute__((used)) static void
_iflib_fl_refill(if_ctx_t ctx, iflib_fl_t fl, int count)
{
 struct if_rxd_update iru;
 struct rxq_refill_cb_arg cb_arg;
 struct mbuf *m;
 caddr_t cl, *sd_cl;
 struct mbuf **sd_m;
 bus_dmamap_t *sd_map;
 bus_addr_t bus_addr, *sd_ba;
 int err, frag_idx, i, idx, n, pidx;
 qidx_t credits;

 sd_m = fl->ifl_sds.ifsd_m;
 sd_map = fl->ifl_sds.ifsd_map;
 sd_cl = fl->ifl_sds.ifsd_cl;
 sd_ba = fl->ifl_sds.ifsd_ba;
 pidx = fl->ifl_pidx;
 idx = pidx;
 frag_idx = fl->ifl_fragidx;
 credits = fl->ifl_credits;

 i = 0;
 n = count;
 MPASS(n > 0);
 MPASS(credits + n <= fl->ifl_size);

 if (pidx < fl->ifl_cidx)
  MPASS(pidx + n <= fl->ifl_cidx);
 if (pidx == fl->ifl_cidx && (credits < fl->ifl_size))
  MPASS(fl->ifl_gen == 0);
 if (pidx > fl->ifl_cidx)
  MPASS(n <= fl->ifl_size - pidx + fl->ifl_cidx);

 DBG_COUNTER_INC(fl_refills);
 if (n > 8)
  DBG_COUNTER_INC(fl_refills_large);
 iru_init(&iru, fl->ifl_rxq, fl->ifl_id);
 while (n--) {






  bit_ffc_at(fl->ifl_rx_bitmap, frag_idx, fl->ifl_size,
      &frag_idx);
  if (frag_idx < 0)
   bit_ffc(fl->ifl_rx_bitmap, fl->ifl_size, &frag_idx);
  MPASS(frag_idx >= 0);
  if ((cl = sd_cl[frag_idx]) == ((void*)0)) {
   if ((cl = m_cljget(((void*)0), M_NOWAIT, fl->ifl_buf_size)) == ((void*)0))
    break;

   cb_arg.error = 0;
   MPASS(sd_map != ((void*)0));
   err = bus_dmamap_load(fl->ifl_buf_tag, sd_map[frag_idx],
       cl, fl->ifl_buf_size, _rxq_refill_cb, &cb_arg,
       BUS_DMA_NOWAIT);
   if (err != 0 || cb_arg.error) {



    if (fl->ifl_zone == zone_pack)
     uma_zfree(fl->ifl_zone, cl);
    break;
   }

   sd_ba[frag_idx] = bus_addr = cb_arg.seg.ds_addr;
   sd_cl[frag_idx] = cl;



  } else {
   bus_addr = sd_ba[frag_idx];
  }
  bus_dmamap_sync(fl->ifl_buf_tag, sd_map[frag_idx],
      BUS_DMASYNC_PREREAD);

  if (sd_m[frag_idx] == ((void*)0)) {
   if ((m = m_gethdr(M_NOWAIT, MT_NOINIT)) == ((void*)0)) {
    break;
   }
   sd_m[frag_idx] = m;
  }
  bit_set(fl->ifl_rx_bitmap, frag_idx);




  DBG_COUNTER_INC(rx_allocs);
  fl->ifl_rxd_idxs[i] = frag_idx;
  fl->ifl_bus_addrs[i] = bus_addr;
  fl->ifl_vm_addrs[i] = cl;
  credits++;
  i++;
  MPASS(credits <= fl->ifl_size);
  if (++idx == fl->ifl_size) {
   fl->ifl_gen = 1;
   idx = 0;
  }
  if (n == 0 || i == IFLIB_MAX_RX_REFRESH) {
   iru.iru_pidx = pidx;
   iru.iru_count = i;
   ctx->isc_rxd_refill(ctx->ifc_softc, &iru);
   i = 0;
   pidx = idx;
   fl->ifl_pidx = idx;
   fl->ifl_credits = credits;
  }
 }

 if (i) {
  iru.iru_pidx = pidx;
  iru.iru_count = i;
  ctx->isc_rxd_refill(ctx->ifc_softc, &iru);
  fl->ifl_pidx = idx;
  fl->ifl_credits = credits;
 }
 DBG_COUNTER_INC(rxd_flush);
 if (fl->ifl_pidx == 0)
  pidx = fl->ifl_size - 1;
 else
  pidx = fl->ifl_pidx - 1;

 bus_dmamap_sync(fl->ifl_ifdi->idi_tag, fl->ifl_ifdi->idi_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 ctx->isc_rxd_flush(ctx->ifc_softc, fl->ifl_rxq->ifr_id, fl->ifl_id, pidx);
 fl->ifl_fragidx = frag_idx;
}
