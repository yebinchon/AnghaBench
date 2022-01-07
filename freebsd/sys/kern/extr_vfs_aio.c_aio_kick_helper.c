
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;


 int aio_job_mtx ;
 scalar_t__ aio_kick (struct proc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
aio_kick_helper(void *context, int pending)
{
 struct proc *userp = context;

 mtx_lock(&aio_job_mtx);
 while (--pending >= 0) {
  if (aio_kick(userp))
   break;
 }
 mtx_unlock(&aio_job_mtx);
}
