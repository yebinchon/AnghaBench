
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef void* node_p ;
struct TYPE_3__ {int fn_sent; } ;


 int M_WAITOK ;
 TYPE_1__* NG_NODE_PRIVATE (void* const) ;
 int NG_QUEUE ;
 int NG_WAITOK ;
 int SU_OK ;
 scalar_t__ atomic_cmpset_int (int *,int ,int) ;
 int atomic_store_rel_int (int *,int ) ;
 int ng_ksocket_incoming2 ;
 scalar_t__ ng_send_fn1 (void* const,int *,int *,struct socket*,int ,int) ;

__attribute__((used)) static int
ng_ksocket_incoming(struct socket *so, void *arg, int waitflag)
{
 const node_p node = arg;
 const priv_p priv = NG_NODE_PRIVATE(node);
 int wait = ((waitflag & M_WAITOK) ? NG_WAITOK : 0) | NG_QUEUE;







 if (atomic_cmpset_int(&priv->fn_sent, 0, 1) &&
     ng_send_fn1(node, ((void*)0), &ng_ksocket_incoming2, so, 0, wait)) {
  atomic_store_rel_int(&priv->fn_sent, 0);
 }
 return (SU_OK);
}
