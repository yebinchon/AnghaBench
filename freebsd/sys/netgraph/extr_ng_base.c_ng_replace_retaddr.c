
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_p ;
typedef scalar_t__ ng_ID_t ;
typedef int item_p ;
typedef scalar_t__ NGI_RETADDR ;


 scalar_t__ ng_node2ID (int ) ;

void
ng_replace_retaddr(node_p here, item_p item, ng_ID_t retaddr)
{
 if (retaddr) {
  NGI_RETADDR(item) = retaddr;
 } else {




  NGI_RETADDR(item) = ng_node2ID(here);
 }
}
