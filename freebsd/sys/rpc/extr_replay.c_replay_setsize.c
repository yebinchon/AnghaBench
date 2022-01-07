
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_cache {size_t rc_maxsize; int rc_lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int replay_prune (struct replay_cache*) ;

void
replay_setsize(struct replay_cache *rc, size_t newmaxsize)
{

 mtx_lock(&rc->rc_lock);
 rc->rc_maxsize = newmaxsize;
 replay_prune(rc);
 mtx_unlock(&rc->rc_lock);
}
