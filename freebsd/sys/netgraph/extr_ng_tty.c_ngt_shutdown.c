
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty {int dummy; } ;
typedef TYPE_1__* sc_p ;
typedef int node_p ;
struct TYPE_6__ {int ifq_mtx; } ;
struct TYPE_5__ {int node; TYPE_4__ outq; struct tty* tp; } ;


 int IF_DRAIN (TYPE_4__*) ;
 int M_NETGRAPH ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_UNREF (int ) ;
 int free (TYPE_1__* const,int ) ;
 int mtx_destroy (int *) ;
 int tty_lock (struct tty*) ;
 int ttyhook_unregister (struct tty*) ;

__attribute__((used)) static int
ngt_shutdown(node_p node)
{
 const sc_p sc = NG_NODE_PRIVATE(node);
 struct tty *tp;

 tp = sc->tp;
 if (tp != ((void*)0)) {
  tty_lock(tp);
  ttyhook_unregister(tp);
 }

 IF_DRAIN(&sc->outq);
 mtx_destroy(&(sc)->outq.ifq_mtx);
 NG_NODE_UNREF(sc->node);
 free(sc, M_NETGRAPH);

 return (0);
}
