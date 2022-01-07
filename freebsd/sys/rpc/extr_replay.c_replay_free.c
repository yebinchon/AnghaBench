
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_cache_entry {size_t rce_hash; scalar_t__ rce_repbody; } ;
struct replay_cache {int rc_size; int rc_all; int * rc_cache; int rc_count; int rc_lock; } ;


 int MA_OWNED ;
 int M_RPC ;
 int TAILQ_REMOVE (int *,struct replay_cache_entry*,int ) ;
 int free (struct replay_cache_entry*,int ) ;
 int m_freem (scalar_t__) ;
 scalar_t__ m_length (scalar_t__,int *) ;
 int mtx_assert (int *,int ) ;
 int rce_alllink ;
 int rce_link ;

__attribute__((used)) static void
replay_free(struct replay_cache *rc, struct replay_cache_entry *rce)
{

 mtx_assert(&rc->rc_lock, MA_OWNED);

 rc->rc_count--;
 TAILQ_REMOVE(&rc->rc_cache[rce->rce_hash], rce, rce_link);
 TAILQ_REMOVE(&rc->rc_all, rce, rce_alllink);
 if (rce->rce_repbody) {
  rc->rc_size -= m_length(rce->rce_repbody, ((void*)0));
  m_freem(rce->rce_repbody);
 }
 free(rce, M_RPC);
}
