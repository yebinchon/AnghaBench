
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {size_t dir; } ;
struct secpolicy {scalar_t__ state; TYPE_1__ spidx; } ;
struct mbuf {int dummy; } ;


 int IPSEC_ASSERT (int,char*) ;
 size_t IPSEC_DIR_INBOUND ;
 size_t IPSEC_DIR_OUTBOUND ;
 scalar_t__ IPSEC_SPSTATE_DEAD ;
 scalar_t__ IPSEC_SPSTATE_IFNET ;
 int KEY_SENDUP_ALL ;
 int LIST_REMOVE (struct secpolicy*,int ) ;
 int SADB_X_SPDDELETE ;
 scalar_t__ SPDCACHE_ENABLED () ;
 int SPTREE_WLOCK () ;
 int SPTREE_WUNLOCK () ;
 int TAILQ_REMOVE (int *,struct secpolicy*,int ) ;
 int V_spd_size ;
 int * V_sptree_ifnet ;
 int chain ;
 int idhash ;
 int key_sendup_mbuf (int *,struct mbuf*,int ) ;
 struct mbuf* key_setdumpsp (struct secpolicy*,int ,int ,int ) ;
 int spdcache_clear () ;

void
key_unregister_ifnet(struct secpolicy **spp, u_int count)
{
 struct mbuf *m;
 u_int i;

 SPTREE_WLOCK();
 for (i = 0; i < count; i++) {
  IPSEC_ASSERT(spp[i]->spidx.dir == IPSEC_DIR_INBOUND ||
      spp[i]->spidx.dir == IPSEC_DIR_OUTBOUND,
      ("invalid direction %u", spp[i]->spidx.dir));

  if (spp[i]->state != IPSEC_SPSTATE_IFNET)
   continue;
  spp[i]->state = IPSEC_SPSTATE_DEAD;
  TAILQ_REMOVE(&V_sptree_ifnet[spp[i]->spidx.dir],
      spp[i], chain);
  V_spd_size--;
  LIST_REMOVE(spp[i], idhash);
 }
 SPTREE_WUNLOCK();
 if (SPDCACHE_ENABLED())
  spdcache_clear();

 for (i = 0; i < count; i++) {
  m = key_setdumpsp(spp[i], SADB_X_SPDDELETE, 0, 0);
  if (m != ((void*)0))
   key_sendup_mbuf(((void*)0), m, KEY_SENDUP_ALL);
 }
}
