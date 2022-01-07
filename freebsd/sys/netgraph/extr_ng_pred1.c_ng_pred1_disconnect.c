
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_p ;
typedef int hook_p ;


 int NG_HOOK_NODE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int const) ;
 scalar_t__ NG_NODE_NUMHOOKS (int const) ;
 int Pred1Init (int const) ;
 int ng_rmnode_self (int const) ;

__attribute__((used)) static int
ng_pred1_disconnect(hook_p hook)
{
 const node_p node = NG_HOOK_NODE(hook);

 Pred1Init(node);


 if ((NG_NODE_NUMHOOKS(node) == 0) && NG_NODE_IS_VALID(node))
  ng_rmnode_self(node);
 return (0);
}
