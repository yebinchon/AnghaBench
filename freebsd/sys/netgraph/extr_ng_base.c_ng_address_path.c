
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * node_p ;
typedef int ng_ID_t ;
typedef int item_p ;
typedef int * hook_p ;


 int ITEM_DEBUG_CHECKS ;
 int NGI_SET_HOOK (int ,int *) ;
 int NGI_SET_NODE (int ,int *) ;
 int NG_FREE_ITEM (int ) ;
 int SET_RETADDR (int ,int *,int ) ;
 int ng_path2noderef (int *,char const*,int **,int **) ;

int
ng_address_path(node_p here, item_p item, const char *address, ng_ID_t retaddr)
{
 node_p dest = ((void*)0);
 hook_p hook = ((void*)0);
 int error;

 ITEM_DEBUG_CHECKS;




 error = ng_path2noderef(here, address, &dest, &hook);
 if (error) {
  NG_FREE_ITEM(item);
  return (error);
 }
 NGI_SET_NODE(item, dest);
 if (hook)
  NGI_SET_HOOK(item, hook);

 SET_RETADDR(item, here, retaddr);
 return (0);
}
