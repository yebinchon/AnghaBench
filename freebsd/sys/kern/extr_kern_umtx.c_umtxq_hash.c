
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {uintptr_t b; scalar_t__ a; } ;
struct TYPE_4__ {TYPE_1__ both; } ;
struct umtx_key {unsigned int hash; TYPE_2__ info; } ;


 unsigned int GOLDEN_RATIO_PRIME ;
 unsigned int UMTX_CHAINS ;
 unsigned int UMTX_SHIFTS ;

__attribute__((used)) static inline void
umtxq_hash(struct umtx_key *key)
{
 unsigned n;

 n = (uintptr_t)key->info.both.a + key->info.both.b;
 key->hash = ((n * GOLDEN_RATIO_PRIME) >> UMTX_SHIFTS) % UMTX_CHAINS;
}
