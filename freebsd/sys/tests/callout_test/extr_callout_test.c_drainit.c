
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout_run {int lock; int drain_calls; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
drainit(void *arg)
{
 struct callout_run *rn;

 rn = (struct callout_run *)arg;
 mtx_lock(&rn->lock);
 rn->drain_calls++;
 mtx_unlock(&rn->lock);
}
