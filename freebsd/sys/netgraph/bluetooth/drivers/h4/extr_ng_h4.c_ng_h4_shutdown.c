
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* ng_h4_info_p ;
struct TYPE_8__ {int ifq_mtx; } ;
struct TYPE_7__ {TYPE_4__ outq; int dying; } ;


 int EOPNOTSUPP ;
 int M_NETGRAPH_H4 ;
 int NG_H4_LOCK (TYPE_1__*) ;
 int NG_H4_UNLOCK (TYPE_1__*) ;
 int NG_NODE_PRIVATE (int ) ;
 int NG_NODE_REVIVE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int _IF_DRAIN (TYPE_4__*) ;
 int bzero (TYPE_1__*,int) ;
 int free (TYPE_1__*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
ng_h4_shutdown(node_p node)
{
 ng_h4_info_p sc = (ng_h4_info_p) NG_NODE_PRIVATE(node);

 NG_H4_LOCK(sc);

 if (!sc->dying) {
  NG_H4_UNLOCK(sc);

  NG_NODE_REVIVE(node);

  return (EOPNOTSUPP);
 }

 NG_H4_UNLOCK(sc);

 NG_NODE_SET_PRIVATE(node, ((void*)0));

 _IF_DRAIN(&sc->outq);

 NG_NODE_UNREF(node);
 mtx_destroy(&sc->outq.ifq_mtx);
 bzero(sc, sizeof(*sc));
 free(sc, M_NETGRAPH_H4);

 return (0);
}
