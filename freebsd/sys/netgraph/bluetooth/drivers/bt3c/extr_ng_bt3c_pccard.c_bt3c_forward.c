
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef int node_p ;
typedef int hook_p ;
typedef TYPE_1__* bt3c_softc_p ;
struct TYPE_2__ {int inq; int stat; int * hook; } ;


 int IF_DEQUEUE (int *,struct mbuf*) ;
 int IF_LOCK (int *) ;
 int IF_UNLOCK (int *) ;
 int NG_BT3C_STAT_IERROR (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 scalar_t__ NG_HOOK_IS_VALID (int *) ;
 int NG_NODE_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;
 int _IF_DEQUEUE (int *,struct mbuf*) ;

__attribute__((used)) static void
bt3c_forward(node_p node, hook_p hook, void *arg1, int arg2)
{
 bt3c_softc_p sc = (bt3c_softc_p) NG_NODE_PRIVATE(node);
 struct mbuf *m = ((void*)0);
 int error;

 if (sc == ((void*)0))
  return;

 if (sc->hook != ((void*)0) && NG_HOOK_IS_VALID(sc->hook)) {
  for (;;) {
   IF_DEQUEUE(&sc->inq, m);
   if (m == ((void*)0))
    break;

   NG_SEND_DATA_ONLY(error, sc->hook, m);
   if (error != 0)
    NG_BT3C_STAT_IERROR(sc->stat);
  }
 } else {
  IF_LOCK(&sc->inq);
  for (;;) {
   _IF_DEQUEUE(&sc->inq, m);
   if (m == ((void*)0))
    break;

   NG_BT3C_STAT_IERROR(sc->stat);
   NG_FREE_M(m);
  }
  IF_UNLOCK(&sc->inq);
 }
}
