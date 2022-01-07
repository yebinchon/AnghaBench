
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ng_hci_unit_p ;
struct TYPE_3__ {int neighbors; } ;


 int LIST_EMPTY (int *) ;
 int LIST_FIRST (int *) ;
 int ng_hci_free_neighbor (int ) ;

void
ng_hci_flush_neighbor_cache(ng_hci_unit_p unit)
{
 while (!LIST_EMPTY(&unit->neighbors))
  ng_hci_free_neighbor(LIST_FIRST(&unit->neighbors));
}
