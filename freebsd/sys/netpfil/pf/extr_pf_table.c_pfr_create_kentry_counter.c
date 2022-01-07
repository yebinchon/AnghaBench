
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_kcounters {scalar_t__ pfrkc_tzero; void*** pfrkc_bytes; void*** pfrkc_packets; } ;


 int M_NOWAIT ;
 void* counter_u64_alloc (int ) ;

__attribute__((used)) static bool
pfr_create_kentry_counter(struct pfr_kcounters *kc, int pfr_dir, int pfr_op)
{
 kc->pfrkc_packets[pfr_dir][pfr_op] = counter_u64_alloc(M_NOWAIT);
 if (! kc->pfrkc_packets[pfr_dir][pfr_op])
  return (0);

 kc->pfrkc_bytes[pfr_dir][pfr_op] = counter_u64_alloc(M_NOWAIT);
 if (! kc->pfrkc_bytes[pfr_dir][pfr_op]) {


  return (0);
 }

 kc->pfrkc_tzero = 0;

 return (1);
}
