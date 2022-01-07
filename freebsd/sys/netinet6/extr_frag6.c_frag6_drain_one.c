
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ip6q {int dummy; } ;


 int IP6QB_HEAD (scalar_t__) ;
 int IP6QB_LOCK (scalar_t__) ;
 int IP6QB_UNLOCK (scalar_t__) ;
 scalar_t__ IP6REASS_NHASH ;
 int IP6STAT_INC (int ) ;
 struct ip6q* TAILQ_FIRST (int ) ;
 int frag6_freef (struct ip6q*,scalar_t__) ;
 int ip6s_fragdropped ;

__attribute__((used)) static void
frag6_drain_one(void)
{
 struct ip6q *q6;
 uint32_t bucket;

 for (bucket = 0; bucket < IP6REASS_NHASH; bucket++) {
  IP6QB_LOCK(bucket);
  while ((q6 = TAILQ_FIRST(IP6QB_HEAD(bucket))) != ((void*)0)) {
   IP6STAT_INC(ip6s_fragdropped);

   frag6_freef(q6, bucket);
  }
  IP6QB_UNLOCK(bucket);
 }
}
