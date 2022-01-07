
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct ifmp_ring {TYPE_2__* cookie; } ;
typedef TYPE_2__* iflib_txq_t ;
typedef TYPE_3__* if_ctx_t ;
struct TYPE_8__ {int (* isc_txd_credits_update ) (int ,int ,int) ;int ifc_softc; } ;
struct TYPE_7__ {int ift_id; TYPE_1__* ift_ifdi; TYPE_3__* ift_ctx; } ;
struct TYPE_6__ {int idi_map; int idi_tag; } ;


 int BUS_DMASYNC_POSTREAD ;
 scalar_t__ MAX_TX_DESC (TYPE_3__*) ;
 scalar_t__ TXQ_AVAIL (TYPE_2__*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static uint32_t
iflib_txq_can_drain(struct ifmp_ring *r)
{
 iflib_txq_t txq = r->cookie;
 if_ctx_t ctx = txq->ift_ctx;

 if (TXQ_AVAIL(txq) > MAX_TX_DESC(ctx) + 2)
  return (1);
 bus_dmamap_sync(txq->ift_ifdi->idi_tag, txq->ift_ifdi->idi_map,
     BUS_DMASYNC_POSTREAD);
 return (ctx->isc_txd_credits_update(ctx->ifc_softc, txq->ift_id,
     0));
}
