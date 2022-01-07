
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct svc_callout {struct svc_callout* sc_netid; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
struct TYPE_4__ {int sp_lock; int sp_callouts; } ;
typedef TYPE_1__ SVCPOOL ;


 int TAILQ_REMOVE (int *,struct svc_callout*,int ) ;
 int mem_free (struct svc_callout*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rpcb_unset (int const,int const,int *) ;
 int sc_link ;
 struct svc_callout* svc_find (TYPE_1__*,int const,int const,int *) ;

void
svc_unreg(SVCPOOL *pool, const rpcprog_t prog, const rpcvers_t vers)
{
 struct svc_callout *s;


 (void) rpcb_unset(prog, vers, ((void*)0));
 mtx_lock(&pool->sp_lock);
 while ((s = svc_find(pool, prog, vers, ((void*)0))) != ((void*)0)) {
  TAILQ_REMOVE(&pool->sp_callouts, s, sc_link);
  if (s->sc_netid)
   mem_free(s->sc_netid, sizeof (s->sc_netid) + 1);
  mem_free(s, sizeof (struct svc_callout));
 }
 mtx_unlock(&pool->sp_lock);
}
