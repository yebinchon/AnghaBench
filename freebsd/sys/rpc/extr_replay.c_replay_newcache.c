
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_cache {size_t rc_maxsize; int rc_lock; int rc_all; int * rc_cache; } ;


 int MTX_DEF ;
 int M_RPC ;
 int M_WAITOK ;
 int M_ZERO ;
 int REPLAY_HASH_SIZE ;
 int TAILQ_INIT (int *) ;
 struct replay_cache* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

struct replay_cache *
replay_newcache(size_t maxsize)
{
 struct replay_cache *rc;
 int i;

 rc = malloc(sizeof(*rc), M_RPC, M_WAITOK|M_ZERO);
 for (i = 0; i < REPLAY_HASH_SIZE; i++)
  TAILQ_INIT(&rc->rc_cache[i]);
 TAILQ_INIT(&rc->rc_all);
 mtx_init(&rc->rc_lock, "rc_lock", ((void*)0), MTX_DEF);
 rc->rc_maxsize = maxsize;

 return (rc);
}
