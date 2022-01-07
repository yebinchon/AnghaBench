
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int hook_p ;
struct TYPE_6__ {int ifq_mtx; } ;
struct TYPE_5__ {int unit; TYPE_4__ readq; int ngd_mtx; int ngddev; } ;


 int DBG ;
 int IF_DRAIN (TYPE_4__*) ;
 int M_NETGRAPH ;
 int NG_HOOK_NODE (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int destroy_dev (int ) ;
 int free (TYPE_1__*,int ) ;
 int free_unr (int ,int ) ;
 int mtx_destroy (int *) ;
 int ng_rmnode_self (int ) ;
 int ngd_unit ;

__attribute__((used)) static int
ng_device_disconnect(hook_p hook)
{
 priv_p priv = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 DBG;

 destroy_dev(priv->ngddev);
 mtx_destroy(&priv->ngd_mtx);

 IF_DRAIN(&priv->readq);
 mtx_destroy(&(priv)->readq.ifq_mtx);

 free_unr(ngd_unit, priv->unit);

 free(priv, M_NETGRAPH);

 ng_rmnode_self(NG_HOOK_NODE(hook));

 return(0);
}
