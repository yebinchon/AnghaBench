
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
struct tx_ring {int tail; } ;
struct ixl_vsi {int hw; TYPE_2__* shared; TYPE_1__* tx_queues; } ;
typedef scalar_t__ qidx_t ;
struct TYPE_4__ {scalar_t__* isc_ntxd; } ;
struct TYPE_3__ {struct tx_ring txr; } ;


 int MPASS (int) ;
 int wr32 (int ,int ,scalar_t__) ;

__attribute__((used)) static void
ixl_isc_txd_flush(void *arg, uint16_t txqid, qidx_t pidx)
{
 struct ixl_vsi *vsi = arg;
 struct tx_ring *txr = &vsi->tx_queues[txqid].txr;






 MPASS(pidx < vsi->shared->isc_ntxd[0]);
 wr32(vsi->hw, txr->tail, pidx);
}
