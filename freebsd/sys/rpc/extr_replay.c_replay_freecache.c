
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_cache {int rc_lock; int rc_all; } ;


 int M_RPC ;
 scalar_t__ TAILQ_FIRST (int *) ;
 int free (struct replay_cache*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int replay_free (struct replay_cache*,scalar_t__) ;

void
replay_freecache(struct replay_cache *rc)
{

 mtx_lock(&rc->rc_lock);
 while (TAILQ_FIRST(&rc->rc_all))
  replay_free(rc, TAILQ_FIRST(&rc->rc_all));
 mtx_destroy(&rc->rc_lock);
 free(rc, M_RPC);
}
