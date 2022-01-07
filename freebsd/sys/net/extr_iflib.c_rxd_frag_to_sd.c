
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef TYPE_3__* iflib_rxq_t ;
typedef TYPE_4__* iflib_fl_t ;
typedef TYPE_5__* if_rxsd_t ;
typedef TYPE_6__* if_rxd_info_t ;
typedef TYPE_7__* if_rxd_frag_t ;
typedef int caddr_t ;
typedef int * bus_dmamap_t ;
struct TYPE_19__ {int irf_flid; int irf_idx; } ;
struct TYPE_18__ {int iri_pad; int iri_len; int iri_ifp; } ;
struct TYPE_17__ {int ifsd_cidx; int * ifsd_cl; TYPE_4__* ifsd_fl; } ;
struct TYPE_14__ {struct mbuf** ifsd_m; int ** ifsd_map; int * ifsd_cl; } ;
struct TYPE_16__ {int ifl_size; int ifl_cidx; int ifl_rx_bitmap; scalar_t__ ifl_gen; int ifl_buf_tag; TYPE_2__ ifl_sds; int ifl_m_dequeued; int ifl_credits; } ;
struct TYPE_15__ {int * pfil; TYPE_1__* ifr_ctx; TYPE_4__* ifr_fl; } ;
struct TYPE_13__ {int ifc_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int CACHE_LINE_SIZE ;
 int CACHE_PTR_INCREMENT ;
 int IFC_PREFETCH ;
 int MPASS (int) ;


 scalar_t__ PFIL_HOOKED_IN (int *) ;
 int PFIL_IN ;
 int PFIL_MEMPTR ;


 scalar_t__ __predict_false (int) ;
 int bit_clear (int ,int) ;
 int bus_dmamap_sync (int ,int *,int ) ;
 int bus_dmamap_unload (int ,int *) ;
 struct mbuf* pfil_mem2mbuf (int ) ;
 int pfil_run_hooks (int *,int ,int ,int,int *) ;
 int prefetch (int **) ;
 int prefetch_pkts (TYPE_4__*,int) ;

__attribute__((used)) static struct mbuf *
rxd_frag_to_sd(iflib_rxq_t rxq, if_rxd_frag_t irf, bool unload, if_rxsd_t sd,
    int *pf_rv, if_rxd_info_t ri)
{
 bus_dmamap_t map;
 iflib_fl_t fl;
 caddr_t payload;
 struct mbuf *m;
 int flid, cidx, len, next;

 map = ((void*)0);
 flid = irf->irf_flid;
 cidx = irf->irf_idx;
 fl = &rxq->ifr_fl[flid];
 sd->ifsd_fl = fl;
 sd->ifsd_cidx = cidx;
 m = fl->ifl_sds.ifsd_m[cidx];
 sd->ifsd_cl = &fl->ifl_sds.ifsd_cl[cidx];
 fl->ifl_credits--;



 if (rxq->ifr_ctx->ifc_flags & IFC_PREFETCH)
  prefetch_pkts(fl, cidx);
 next = (cidx + CACHE_PTR_INCREMENT) & (fl->ifl_size-1);
 prefetch(&fl->ifl_sds.ifsd_map[next]);
 map = fl->ifl_sds.ifsd_map[cidx];
 next = (cidx + CACHE_LINE_SIZE) & (fl->ifl_size-1);


 MPASS(fl->ifl_cidx == cidx);
 bus_dmamap_sync(fl->ifl_buf_tag, map, BUS_DMASYNC_POSTREAD);

 if (rxq->pfil != ((void*)0) && PFIL_HOOKED_IN(rxq->pfil) && pf_rv != ((void*)0)) {
  payload = *sd->ifsd_cl;
  payload += ri->iri_pad;
  len = ri->iri_len - ri->iri_pad;
  *pf_rv = pfil_run_hooks(rxq->pfil, payload, ri->iri_ifp,
      len | PFIL_MEMPTR | PFIL_IN, ((void*)0));
  switch (*pf_rv) {
  case 130:
  case 131:



   m = ((void*)0);
   unload = 0;
   break;
  case 128:



   m = pfil_mem2mbuf(payload);
   unload = 0;
   break;
  case 129:




   fl->ifl_sds.ifsd_m[cidx] = ((void*)0);
   break;
  default:
   MPASS(0);
  }
 } else {
  fl->ifl_sds.ifsd_m[cidx] = ((void*)0);
  *pf_rv = 129;
 }

 if (unload)
  bus_dmamap_unload(fl->ifl_buf_tag, map);
 fl->ifl_cidx = (fl->ifl_cidx + 1) & (fl->ifl_size-1);
 if (__predict_false(fl->ifl_cidx == 0))
  fl->ifl_gen = 0;
 bit_clear(fl->ifl_rx_bitmap, cidx);
 return (m);
}
