
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_generic_mit {int mit_ring_idx; struct netmap_adapter* mit_na; scalar_t__ mit_pending; } ;
struct netmap_adapter {int dummy; } ;



void
nm_os_mitigation_init(struct nm_generic_mit *mit, int idx, struct netmap_adapter *na)
{
 mit->mit_pending = 0;
 mit->mit_ring_idx = idx;
 mit->mit_na = na;
}
