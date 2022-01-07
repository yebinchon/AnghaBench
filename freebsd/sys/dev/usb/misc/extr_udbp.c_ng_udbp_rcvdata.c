
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_bt_mbufq {int dummy; } ;
struct udbp_softc {int sc_mtx; int * sc_xfer; struct ng_bt_mbufq sc_xmitq; struct ng_bt_mbufq sc_xmitq_hipri; } ;
struct ng_tag_prio {scalar_t__ priority; } ;
struct mbuf {int dummy; } ;
typedef int item_p ;
typedef int hook_p ;


 int EHOSTDOWN ;
 int ENOBUFS ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NGM_GENERIC_COOKIE ;
 int NG_BT_MBUFQ_DROP (struct ng_bt_mbufq*) ;
 int NG_BT_MBUFQ_ENQUEUE (struct ng_bt_mbufq*,struct mbuf*) ;
 scalar_t__ NG_BT_MBUFQ_FULL (struct ng_bt_mbufq*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HOOK_NODE (int ) ;
 struct udbp_softc* NG_NODE_PRIVATE (int ) ;
 scalar_t__ NG_PRIO_CUTOFF ;
 int NG_TAG_PRIO ;
 size_t UDBP_T_WR ;
 scalar_t__ m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
ng_udbp_rcvdata(hook_p hook, item_p item)
{
 struct udbp_softc *sc = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct ng_bt_mbufq *queue_ptr;
 struct mbuf *m;
 struct ng_tag_prio *ptag;
 int error;

 if (sc == ((void*)0)) {
  NG_FREE_ITEM(item);
  return (EHOSTDOWN);
 }
 NGI_GET_M(item, m);
 NG_FREE_ITEM(item);




 ptag = (void *)m_tag_locate(m, NGM_GENERIC_COOKIE,
     NG_TAG_PRIO, ((void*)0));

 if (ptag && (ptag->priority > NG_PRIO_CUTOFF))
  queue_ptr = &sc->sc_xmitq_hipri;
 else
  queue_ptr = &sc->sc_xmitq;

 mtx_lock(&sc->sc_mtx);

 if (NG_BT_MBUFQ_FULL(queue_ptr)) {
  NG_BT_MBUFQ_DROP(queue_ptr);
  NG_FREE_M(m);
  error = ENOBUFS;
 } else {
  NG_BT_MBUFQ_ENQUEUE(queue_ptr, m);



  usbd_transfer_start(sc->sc_xfer[UDBP_T_WR]);
  error = 0;
 }

 mtx_unlock(&sc->sc_mtx);

 return (error);
}
