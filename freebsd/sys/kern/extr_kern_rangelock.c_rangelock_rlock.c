
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rangelock {int dummy; } ;
struct mtx {int dummy; } ;
typedef int off_t ;


 int RL_LOCK_READ ;
 void* rangelock_enqueue (struct rangelock*,int ,int ,int ,struct mtx*,int) ;

void *
rangelock_rlock(struct rangelock *lock, off_t start, off_t end, struct mtx *ilk)
{

 return (rangelock_enqueue(lock, start, end, RL_LOCK_READ, ilk, 0));
}
