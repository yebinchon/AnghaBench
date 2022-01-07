
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hook_p ;


 int M_NETGRAPH ;
 int NG_HOOK_NODE (int ) ;
 int NG_HOOK_PRIVATE (int ) ;
 int NG_HOOK_SET_PRIVATE (int ,int *) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 int free (int ,int ) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ngh_disconnect(hook_p hook)
{

 free(NG_HOOK_PRIVATE(hook), M_NETGRAPH);
 NG_HOOK_SET_PRIVATE(hook, ((void*)0));
 if (NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0)
  ng_rmnode_self(NG_HOOK_NODE(hook));
 return (0);
}
