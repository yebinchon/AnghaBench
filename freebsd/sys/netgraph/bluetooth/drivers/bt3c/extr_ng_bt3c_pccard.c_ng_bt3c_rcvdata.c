
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef int item_p ;
typedef scalar_t__ hook_p ;
typedef TYPE_2__* bt3c_softc_p ;
struct TYPE_4__ {scalar_t__ hook; int node; int outq; int stat; int dev; } ;


 int EHOSTDOWN ;
 int EINVAL ;
 int IF_LOCK (int *) ;
 int IF_UNLOCK (int *) ;
 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_BT3C_ERR (int ,char*,int ) ;
 int NG_BT3C_STAT_OERROR (int ) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HOOK_NODE (scalar_t__) ;
 int NG_NODE_PRIVATE (int ) ;
 int _IF_ENQUEUE (int *,struct mbuf*) ;
 scalar_t__ _IF_QFULL (int *) ;
 int bt3c_send ;
 int ng_send_fn (int ,int *,int ,int *,int ) ;

__attribute__((used)) static int
ng_bt3c_rcvdata(hook_p hook, item_p item)
{
 bt3c_softc_p sc = (bt3c_softc_p)NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct mbuf *m = ((void*)0);
 int error = 0;

 if (sc == ((void*)0)) {
  error = EHOSTDOWN;
  goto out;
 }

 if (hook != sc->hook) {
  error = EINVAL;
  goto out;
 }

 NGI_GET_M(item, m);

 IF_LOCK(&sc->outq);
 if (_IF_QFULL(&sc->outq)) {
  NG_BT3C_ERR(sc->dev,
"Outgoing queue is full. Dropping mbuf, len=%d\n", m->m_pkthdr.len);

  NG_BT3C_STAT_OERROR(sc->stat);

  NG_FREE_M(m);
 } else
  _IF_ENQUEUE(&sc->outq, m);
 IF_UNLOCK(&sc->outq);

 error = ng_send_fn(sc->node, ((void*)0), bt3c_send, ((void*)0), 0 );
out:
        NG_FREE_ITEM(item);

 return (error);
}
