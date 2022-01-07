
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_4__ {int flags; int ngd_mtx; int readq; } ;


 int DBG ;
 int ENOBUFS ;
 int IF_LOCK (int *) ;
 int IF_UNLOCK (int *) ;
 int NGDF_RWAIT ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HOOK_NODE (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int _IF_ENQUEUE (int *,struct mbuf*) ;
 scalar_t__ _IF_QFULL (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static int
ng_device_rcvdata(hook_p hook, item_p item)
{
 priv_p priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct mbuf *m;

 DBG;

 NGI_GET_M(item, m);
 NG_FREE_ITEM(item);

 IF_LOCK(&priv->readq);
 if (_IF_QFULL(&priv->readq)) {
  IF_UNLOCK(&priv->readq);
  NG_FREE_M(m);
  return (ENOBUFS);
 }

 _IF_ENQUEUE(&priv->readq, m);
 IF_UNLOCK(&priv->readq);
 mtx_lock(&priv->ngd_mtx);
 if (priv->flags & NGDF_RWAIT) {
  priv->flags &= ~NGDF_RWAIT;
  wakeup(priv);
 }
 mtx_unlock(&priv->ngd_mtx);

 return(0);
}
