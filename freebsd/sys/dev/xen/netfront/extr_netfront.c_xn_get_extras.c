
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif_extra_info {int flags; int type; } ;
struct netfront_rxq {int ring; } ;
struct mbuf {int dummy; } ;
typedef int grant_ref_t ;
typedef scalar_t__ RING_IDX ;


 int EINVAL ;
 scalar_t__ RING_GET_RESPONSE (int *,scalar_t__) ;
 int XEN_NETIF_EXTRA_FLAG_MORE ;
 int XEN_NETIF_EXTRA_TYPE_MAX ;
 scalar_t__ __predict_false (int) ;
 int memcpy (struct netif_extra_info*,struct netif_extra_info*,int) ;
 struct mbuf* xn_get_rx_mbuf (struct netfront_rxq*,scalar_t__) ;
 int xn_get_rx_ref (struct netfront_rxq*,scalar_t__) ;
 int xn_move_rx_slot (struct netfront_rxq*,struct mbuf*,int ) ;

__attribute__((used)) static int
xn_get_extras(struct netfront_rxq *rxq,
    struct netif_extra_info *extras, RING_IDX rp, RING_IDX *cons)
{
 struct netif_extra_info *extra;

 int err = 0;

 do {
  struct mbuf *m;
  grant_ref_t ref;

  if (__predict_false(*cons + 1 == rp)) {
   err = EINVAL;
   break;
  }

  extra = (struct netif_extra_info *)
  RING_GET_RESPONSE(&rxq->ring, ++(*cons));

  if (__predict_false(!extra->type ||
   extra->type >= XEN_NETIF_EXTRA_TYPE_MAX)) {
   err = EINVAL;
  } else {
   memcpy(&extras[extra->type - 1], extra, sizeof(*extra));
  }

  m = xn_get_rx_mbuf(rxq, *cons);
  ref = xn_get_rx_ref(rxq, *cons);
  xn_move_rx_slot(rxq, m, ref);
 } while (extra->flags & XEN_NETIF_EXTRA_FLAG_MORE);

 return err;
}
