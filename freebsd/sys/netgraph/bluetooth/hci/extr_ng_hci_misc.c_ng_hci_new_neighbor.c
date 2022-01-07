
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ng_hci_unit_p ;
typedef TYPE_2__* ng_hci_neighbor_p ;
struct TYPE_8__ {int updated; } ;
struct TYPE_7__ {int neighbors; } ;


 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int M_NETGRAPH_HCI ;
 int M_NOWAIT ;
 int M_ZERO ;
 int getmicrotime (int *) ;
 TYPE_2__* malloc (int,int ,int) ;
 int next ;

ng_hci_neighbor_p
ng_hci_new_neighbor(ng_hci_unit_p unit)
{
 ng_hci_neighbor_p n = ((void*)0);

 n = malloc(sizeof(*n), M_NETGRAPH_HCI,
  M_NOWAIT | M_ZERO);
 if (n != ((void*)0)) {
  getmicrotime(&n->updated);
  LIST_INSERT_HEAD(&unit->neighbors, n, next);
 }

 return (n);
}
