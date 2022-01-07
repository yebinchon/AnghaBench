
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * node_p ;
typedef int ng_ID_t ;
typedef int item_p ;


 int EINVAL ;
 int ITEM_DEBUG_CHECKS ;
 int NGI_CLR_HOOK (int ) ;
 int NGI_SET_NODE (int ,int *) ;
 int NG_FREE_ITEM (int ) ;
 int SET_RETADDR (int ,int *,int ) ;
 int TRAP_ERROR () ;
 int * ng_ID2noderef (int ) ;

int
ng_address_ID(node_p here, item_p item, ng_ID_t ID, ng_ID_t retaddr)
{
 node_p dest;

 ITEM_DEBUG_CHECKS;



 dest = ng_ID2noderef(ID);
 if (dest == ((void*)0)) {
  NG_FREE_ITEM(item);
  TRAP_ERROR();
  return(EINVAL);
 }

 NGI_SET_NODE(item, dest);
 NGI_CLR_HOOK(item);
 SET_RETADDR(item, here, retaddr);
 return (0);
}
