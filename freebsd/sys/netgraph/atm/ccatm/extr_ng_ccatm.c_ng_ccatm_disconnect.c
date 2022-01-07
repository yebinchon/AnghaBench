
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccnode {int hook_cnt; int data; int * manage; int * dump; } ;
struct cchook {TYPE_1__* node; int inst; scalar_t__ is_uni; } ;
struct ccdata {int dummy; } ;
typedef int node_p ;
typedef int * hook_p ;
struct TYPE_2__ {struct ccdata* data; } ;


 int M_NG_CCATM ;
 int NG_HOOK_NODE (int *) ;
 struct cchook* NG_HOOK_PRIVATE (int *) ;
 int NG_HOOK_SET_PRIVATE (int *,int *) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 struct ccnode* NG_NODE_PRIVATE (int ) ;
 int cc_port_destroy (int ,int ) ;
 int cc_unmanage (int ) ;
 int cc_user_destroy (int ) ;
 int cc_work (struct ccdata*) ;
 int free (struct cchook*,int ) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ng_ccatm_disconnect(hook_p hook)
{
 node_p node = NG_HOOK_NODE(hook);
 struct ccnode *priv = NG_NODE_PRIVATE(node);
 struct cchook *hd = NG_HOOK_PRIVATE(hook);
 struct ccdata *cc;

 if (hook == priv->dump) {
  priv->dump = ((void*)0);

 } else if (hook == priv->manage) {
  priv->manage = ((void*)0);
  cc_unmanage(priv->data);

 } else {
  if (hd->is_uni)
   cc_port_destroy(hd->inst, 0);
  else
   cc_user_destroy(hd->inst);

  cc = hd->node->data;

  free(hd, M_NG_CCATM);
  NG_HOOK_SET_PRIVATE(hook, ((void*)0));

  priv->hook_cnt--;

  cc_work(cc);
 }




 if (NG_NODE_NUMHOOKS(node) == 0 && NG_NODE_IS_VALID(node))
  ng_rmnode_self(node);

 return (0);
}
