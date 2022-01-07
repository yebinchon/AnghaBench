
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsrvcache {int rc_flag; scalar_t__ rc_acked; int rc_reply; int rc_sockref; } ;
struct nfsrchash_bucket {int mtx; } ;
struct TYPE_2__ {int srvcache_size; } ;


 int LIST_REMOVE (struct nfsrvcache*,int ) ;
 int M_NFSRVCACHE ;
 struct nfsrchash_bucket* NFSRCAHASH (int ) ;
 scalar_t__ RC_NO_ACK ;
 scalar_t__ RC_NO_SEQ ;
 int RC_REPMBUF ;
 int RC_UDP ;
 int TAILQ_REMOVE (int *,struct nfsrvcache*,int ) ;
 int atomic_add_int (int *,int) ;
 int free (struct nfsrvcache*,int ) ;
 int mbuf_freem (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nfsrc_tcpsavedreplies ;
 int nfsrc_udpcachesize ;
 int nfsrc_wanted (struct nfsrvcache*) ;
 int nfsrvudplru ;
 TYPE_1__ nfsstatsv1 ;
 int rc_ahash ;
 int rc_hash ;
 int rc_lru ;

__attribute__((used)) static void
nfsrc_freecache(struct nfsrvcache *rp)
{
 struct nfsrchash_bucket *hbp;

 LIST_REMOVE(rp, rc_hash);
 if (rp->rc_flag & RC_UDP) {
  TAILQ_REMOVE(&nfsrvudplru, rp, rc_lru);
  nfsrc_udpcachesize--;
 } else if (rp->rc_acked != RC_NO_SEQ) {
  hbp = NFSRCAHASH(rp->rc_sockref);
  mtx_lock(&hbp->mtx);
  if (rp->rc_acked == RC_NO_ACK)
   LIST_REMOVE(rp, rc_ahash);
  mtx_unlock(&hbp->mtx);
 }
 nfsrc_wanted(rp);
 if (rp->rc_flag & RC_REPMBUF) {
  mbuf_freem(rp->rc_reply);
  if (!(rp->rc_flag & RC_UDP))
   atomic_add_int(&nfsrc_tcpsavedreplies, -1);
 }
 free(rp, M_NFSRVCACHE);
 atomic_add_int(&nfsstatsv1.srvcache_size, -1);
}
