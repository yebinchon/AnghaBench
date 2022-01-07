
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_kring {scalar_t__ ring_id; TYPE_1__* na; } ;
struct TYPE_2__ {scalar_t__ num_rx_rings; } ;


 scalar_t__ _nm_may_forward (struct netmap_kring*) ;

__attribute__((used)) static inline int
nm_may_forward_up(struct netmap_kring *kring)
{
 return _nm_may_forward(kring) &&
   kring->ring_id != kring->na->num_rx_rings;
}
