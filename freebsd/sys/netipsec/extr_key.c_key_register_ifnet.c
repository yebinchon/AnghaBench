
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {size_t dir; } ;
struct secpolicy {int state; int id; TYPE_1__ spidx; } ;
struct mbuf {int dummy; } ;


 int EAGAIN ;
 int IPSEC_ASSERT (int,char*) ;
 size_t IPSEC_DIR_INBOUND ;
 size_t IPSEC_DIR_OUTBOUND ;
 int IPSEC_SPSTATE_IFNET ;
 int KEY_SENDUP_ALL ;
 int LIST_INSERT_HEAD (int ,struct secpolicy*,int ) ;
 int SADB_X_SPDADD ;
 int SPHASH_HASH (int ) ;
 int SPTREE_WLOCK () ;
 int SPTREE_WUNLOCK () ;
 int TAILQ_INSERT_TAIL (int *,struct secpolicy*,int ) ;
 int * V_sptree_ifnet ;
 int chain ;
 int idhash ;
 int key_getnewspid () ;
 int key_sendup_mbuf (int *,struct mbuf*,int ) ;
 struct mbuf* key_setdumpsp (struct secpolicy*,int ,int ,int ) ;

int
key_register_ifnet(struct secpolicy **spp, u_int count)
{
 struct mbuf *m;
 u_int i;

 SPTREE_WLOCK();



 for (i = 0; i < count; i++) {
  IPSEC_ASSERT(spp[i]->spidx.dir == IPSEC_DIR_INBOUND ||
      spp[i]->spidx.dir == IPSEC_DIR_OUTBOUND,
      ("invalid direction %u", spp[i]->spidx.dir));

  if ((spp[i]->id = key_getnewspid()) == 0) {
   SPTREE_WUNLOCK();
   return (EAGAIN);
  }
 }
 for (i = 0; i < count; i++) {
  TAILQ_INSERT_TAIL(&V_sptree_ifnet[spp[i]->spidx.dir],
      spp[i], chain);






  LIST_INSERT_HEAD(SPHASH_HASH(spp[i]->id), spp[i], idhash);
  spp[i]->state = IPSEC_SPSTATE_IFNET;
 }
 SPTREE_WUNLOCK();



 for (i = 0; i < count; i++) {
  m = key_setdumpsp(spp[i], SADB_X_SPDADD, 0, 0);
  if (m != ((void*)0))
   key_sendup_mbuf(((void*)0), m, KEY_SENDUP_ALL);
 }
 return (0);
}
