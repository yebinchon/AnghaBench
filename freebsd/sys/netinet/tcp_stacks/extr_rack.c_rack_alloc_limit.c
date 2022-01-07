
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ rc_num_split_allocs; } ;
struct tcp_rack {scalar_t__ do_detection; int alloc_limit_reported; TYPE_1__ r_ctl; } ;
struct rack_sendmap {scalar_t__ r_limit_type; } ;


 int counter_u64_add (int ,int) ;
 struct rack_sendmap* rack_alloc (struct tcp_rack*) ;
 int rack_alloc_limited_conns ;
 int rack_split_limited ;
 scalar_t__ rack_tcp_map_split_limit ;

__attribute__((used)) static struct rack_sendmap *
rack_alloc_limit(struct tcp_rack *rack, uint8_t limit_type)
{
 struct rack_sendmap *rsm;

 if (limit_type) {

  if (rack_tcp_map_split_limit > 0 &&
      (rack->do_detection == 0) &&
      rack->r_ctl.rc_num_split_allocs >= rack_tcp_map_split_limit) {
   counter_u64_add(rack_split_limited, 1);
   if (!rack->alloc_limit_reported) {
    rack->alloc_limit_reported = 1;
    counter_u64_add(rack_alloc_limited_conns, 1);
   }
   return (((void*)0));
  }
 }


 rsm = rack_alloc(rack);
 if (rsm != ((void*)0) && limit_type) {
  rsm->r_limit_type = limit_type;
  rack->r_ctl.rc_num_split_allocs++;
 }
 return (rsm);
}
