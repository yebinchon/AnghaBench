
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* iflib_rxq_t ;
typedef TYPE_3__* iflib_fl_t ;
typedef TYPE_4__* if_ctx_t ;
struct TYPE_12__ {scalar_t__ ifc_rx_mbuf_sz; scalar_t__ ifc_max_fl_buf_size; } ;
struct TYPE_11__ {scalar_t__ ifl_credits; scalar_t__ ifl_buf_size; TYPE_1__* ifl_ifdi; scalar_t__ ifl_size; int ifl_zone; int ifl_cltype; int ifl_rx_bitmap; TYPE_2__* ifl_rxq; } ;
struct TYPE_10__ {TYPE_4__* ifr_ctx; } ;
struct TYPE_9__ {int idi_map; int idi_tag; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOBUFS ;
 int MPASS (int) ;
 int _iflib_fl_refill (TYPE_4__*,TYPE_3__*,scalar_t__) ;
 int bit_nclear (int ,int ,scalar_t__) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int iflib_fl_bufs_free (TYPE_3__*) ;
 int m_gettype (scalar_t__) ;
 int m_getzone (scalar_t__) ;
 scalar_t__ min (int,scalar_t__) ;

__attribute__((used)) static int
iflib_fl_setup(iflib_fl_t fl)
{
 iflib_rxq_t rxq = fl->ifl_rxq;
 if_ctx_t ctx = rxq->ifr_ctx;

 bit_nclear(fl->ifl_rx_bitmap, 0, fl->ifl_size - 1);



 iflib_fl_bufs_free(fl);

 MPASS(fl->ifl_credits == 0);
 fl->ifl_buf_size = ctx->ifc_rx_mbuf_sz;
 if (fl->ifl_buf_size > ctx->ifc_max_fl_buf_size)
  ctx->ifc_max_fl_buf_size = fl->ifl_buf_size;
 fl->ifl_cltype = m_gettype(fl->ifl_buf_size);
 fl->ifl_zone = m_getzone(fl->ifl_buf_size);





 _iflib_fl_refill(ctx, fl, min(128, fl->ifl_size));
 MPASS(min(128, fl->ifl_size) == fl->ifl_credits);
 if (min(128, fl->ifl_size) != fl->ifl_credits)
  return (ENOBUFS);



 MPASS(rxq != ((void*)0));
 MPASS(fl->ifl_ifdi != ((void*)0));
 bus_dmamap_sync(fl->ifl_ifdi->idi_tag, fl->ifl_ifdi->idi_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 return (0);
}
