
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tx_ring {int * tx_base; } ;
struct ixl_tx_queue {struct tx_ring txr; TYPE_1__* vsi; } ;
typedef TYPE_2__* if_softc_ctx_t ;
typedef int __le32 ;
struct TYPE_4__ {size_t* isc_ntxd; } ;
struct TYPE_3__ {TYPE_2__* shared; } ;


 int LE32_TO_CPU (int volatile) ;

__attribute__((used)) static inline u32
ixl_get_tx_head(struct ixl_tx_queue *que)
{
 if_softc_ctx_t scctx = que->vsi->shared;
 struct tx_ring *txr = &que->txr;
 void *head = &txr->tx_base[scctx->isc_ntxd[0]];

 return LE32_TO_CPU(*(volatile __le32 *)head);
}
