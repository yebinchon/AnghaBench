
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
typedef TYPE_2__* ng_hci_neighbor_p ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct TYPE_5__ {TYPE_1__ updated; } ;


 scalar_t__ bluetooth_hci_max_neighbor_age () ;
 int getmicrotime (struct timeval*) ;

int
ng_hci_neighbor_stale(ng_hci_neighbor_p n)
{
 struct timeval now;

 getmicrotime(&now);

 return (now.tv_sec - n->updated.tv_sec > bluetooth_hci_max_neighbor_age());
}
