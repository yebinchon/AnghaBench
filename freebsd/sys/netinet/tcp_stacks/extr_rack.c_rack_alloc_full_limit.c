
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rc_num_maps_alloced; } ;
struct tcp_rack {scalar_t__ do_detection; int alloc_limit_reported; TYPE_1__ r_ctl; } ;
struct rack_sendmap {int dummy; } ;


 int counter_u64_add (int ,int) ;
 struct rack_sendmap* rack_alloc (struct tcp_rack*) ;
 int rack_alloc_limited_conns ;
 scalar_t__ rack_tcp_map_entries_limit ;
 int rack_to_alloc_limited ;

__attribute__((used)) static struct rack_sendmap *
rack_alloc_full_limit(struct tcp_rack *rack)
{
 if ((rack_tcp_map_entries_limit > 0) &&
     (rack->do_detection == 0) &&
     (rack->r_ctl.rc_num_maps_alloced >= rack_tcp_map_entries_limit)) {
  counter_u64_add(rack_to_alloc_limited, 1);
  if (!rack->alloc_limit_reported) {
   rack->alloc_limit_reported = 1;
   counter_u64_add(rack_alloc_limited_conns, 1);
  }
  return (((void*)0));
 }
 return (rack_alloc(rack));
}
