
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ u_long ;
typedef size_t u_int ;
struct tte {int dummy; } ;
typedef scalar_t__ pmap_t ;


 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (scalar_t__,int ) ;
 int PMAP_STATS_INC (int ) ;
 size_t TSB_BUCKET_SIZE ;
 scalar_t__ TS_MAX ;
 scalar_t__ TS_MIN ;
 scalar_t__ kernel_pmap ;
 struct tte* tsb_kvtotte (int ) ;
 int tsb_nlookup_k ;
 int tsb_nlookup_u ;
 struct tte* tsb_vtobucket (scalar_t__,scalar_t__,int ) ;
 scalar_t__ tte_match (struct tte*,int ) ;

struct tte *
tsb_tte_lookup(pmap_t pm, vm_offset_t va)
{
 struct tte *bucket;
 struct tte *tp;
 u_long sz;
 u_int i;

 if (pm == kernel_pmap) {
  PMAP_STATS_INC(tsb_nlookup_k);
  tp = tsb_kvtotte(va);
  if (tte_match(tp, va))
   return (tp);
 } else {
  PMAP_LOCK_ASSERT(pm, MA_OWNED);
  PMAP_STATS_INC(tsb_nlookup_u);
  for (sz = TS_MIN; sz <= TS_MAX; sz++) {
   bucket = tsb_vtobucket(pm, sz, va);
   for (i = 0; i < TSB_BUCKET_SIZE; i++) {
    tp = &bucket[i];
    if (tte_match(tp, va))
     return (tp);
   }
  }
 }
 return (((void*)0));
}
