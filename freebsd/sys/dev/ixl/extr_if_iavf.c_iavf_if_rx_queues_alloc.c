
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union i40e_rx_desc {int dummy; } i40e_rx_desc ;
typedef int uint64_t ;
struct rx_ring {int me; struct ixl_rx_queue* que; int rx_paddr; union i40e_rx_desc* rx_base; int tail; } ;
struct ixl_vsi {struct ixl_rx_queue* rx_queues; TYPE_1__* shared; } ;
struct ixl_rx_queue {struct ixl_vsi* vsi; struct rx_ring rxr; } ;
struct iavf_sc {struct ixl_vsi vsi; } ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int isc_nrxqsets; } ;


 int ENOMEM ;
 int I40E_QRX_TAIL1 (int) ;
 int MPASS (int) ;
 int M_IAVF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int device_printf (int ,char*) ;
 int iavf_if_queues_free (int ) ;
 int iflib_get_dev (int ) ;
 struct iavf_sc* iflib_get_softc (int ) ;
 scalar_t__ malloc (int,int ,int) ;

__attribute__((used)) static int
iavf_if_rx_queues_alloc(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs, int nrxqs, int nrxqsets)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &sc->vsi;
 struct ixl_rx_queue *que;
 int i, error = 0;
 if (!(vsi->rx_queues =
     (struct ixl_rx_queue *) malloc(sizeof(struct ixl_rx_queue) *
     nrxqsets, M_IAVF, M_NOWAIT | M_ZERO))) {
  device_printf(iflib_get_dev(ctx), "Unable to allocate RX ring memory\n");
  error = ENOMEM;
  goto fail;
 }

 for (i = 0, que = vsi->rx_queues; i < nrxqsets; i++, que++) {
  struct rx_ring *rxr = &que->rxr;

  rxr->me = i;
  que->vsi = vsi;


  rxr->tail = I40E_QRX_TAIL1(rxr->me);
  rxr->rx_base = (union i40e_rx_desc *)vaddrs[i * nrxqs];
  rxr->rx_paddr = paddrs[i * nrxqs];
  rxr->que = que;
 }

 return (0);
fail:
 iavf_if_queues_free(ctx);
 return (error);
}
