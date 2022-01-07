
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;
struct rpc_msg {int dummy; } ;
struct replay_cache_entry {int rce_hash; int rce_addr; struct rpc_msg rce_msg; } ;
struct replay_cache {int rc_all; int * rc_cache; int rc_count; int rc_lock; } ;


 int MA_OWNED ;
 int M_NOWAIT ;
 int M_RPC ;
 int M_ZERO ;
 int TAILQ_INSERT_HEAD (int *,struct replay_cache_entry*,int ) ;
 int bcopy (struct sockaddr*,int *,int ) ;
 struct replay_cache_entry* malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 int rce_alllink ;
 int rce_link ;

__attribute__((used)) static struct replay_cache_entry *
replay_alloc(struct replay_cache *rc,
    struct rpc_msg *msg, struct sockaddr *addr, int h)
{
 struct replay_cache_entry *rce;

 mtx_assert(&rc->rc_lock, MA_OWNED);

 rc->rc_count++;
 rce = malloc(sizeof(*rce), M_RPC, M_NOWAIT|M_ZERO);
 if (!rce)
  return (((void*)0));
 rce->rce_hash = h;
 rce->rce_msg = *msg;
 bcopy(addr, &rce->rce_addr, addr->sa_len);

 TAILQ_INSERT_HEAD(&rc->rc_cache[h], rce, rce_link);
 TAILQ_INSERT_HEAD(&rc->rc_all, rce, rce_alllink);

 return (rce);
}
