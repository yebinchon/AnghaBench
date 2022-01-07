
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int kill_takers; int signal; scalar_t__ flags; scalar_t__ rw; int lock; } ;


 int MTX_DEF ;
 int SIGKILL ;
 int mtx_init (int *,char*,int *,int ) ;

void ttm_lock_init(struct ttm_lock *lock)
{
 mtx_init(&lock->lock, "ttmlk", ((void*)0), MTX_DEF);
 lock->rw = 0;
 lock->flags = 0;
 lock->kill_takers = 0;
 lock->signal = SIGKILL;
}
