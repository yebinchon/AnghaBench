
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_p ;
typedef int ng_ID_t ;
typedef int item_p ;
typedef int * hook_p ;


 int ENETDOWN ;
 int ITEM_DEBUG_CHECKS ;
 int NGI_SET_HOOK (int ,int *) ;
 int NGI_SET_NODE (int ,int ) ;
 int NG_FREE_ITEM (int ) ;
 scalar_t__ NG_HOOK_NOT_VALID (int *) ;
 int * NG_HOOK_PEER (int *) ;
 int NG_HOOK_REF (int *) ;
 scalar_t__ NG_NODE_NOT_VALID (int ) ;
 int NG_NODE_REF (int ) ;
 int NG_PEER_NODE (int *) ;
 int SET_RETADDR (int ,int ,int ) ;
 int TOPOLOGY_RLOCK () ;
 int TOPOLOGY_RUNLOCK () ;
 int TRAP_ERROR () ;

int
ng_address_hook(node_p here, item_p item, hook_p hook, ng_ID_t retaddr)
{
 hook_p peer;
 node_p peernode;
 ITEM_DEBUG_CHECKS;






 TOPOLOGY_RLOCK();
 if ((hook == ((void*)0)) || NG_HOOK_NOT_VALID(hook) ||
     NG_HOOK_NOT_VALID(peer = NG_HOOK_PEER(hook)) ||
     NG_NODE_NOT_VALID(peernode = NG_PEER_NODE(hook))) {
  NG_FREE_ITEM(item);
  TRAP_ERROR();
  TOPOLOGY_RUNLOCK();
  return (ENETDOWN);
 }




 NG_HOOK_REF(peer);
 NG_NODE_REF(peernode);
 NGI_SET_HOOK(item, peer);
 NGI_SET_NODE(item, peernode);
 SET_RETADDR(item, here, retaddr);

 TOPOLOGY_RUNLOCK();

 return (0);
}
