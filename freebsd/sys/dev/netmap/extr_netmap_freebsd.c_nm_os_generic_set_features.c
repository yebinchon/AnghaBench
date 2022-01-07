
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_generic_adapter {int rxsg; scalar_t__ txqdisc; } ;



void
nm_os_generic_set_features(struct netmap_generic_adapter *gna)
{

 gna->rxsg = 1;
 gna->txqdisc = 0;
}
