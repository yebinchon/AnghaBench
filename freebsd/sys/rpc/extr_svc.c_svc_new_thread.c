
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_6__ {int sg_lock; int sg_threadcount; TYPE_1__* sg_pool; } ;
struct TYPE_5__ {int sp_name; int sp_proc; } ;
typedef TYPE_1__ SVCPOOL ;
typedef TYPE_2__ SVCGROUP ;


 int kthread_add (int ,TYPE_2__*,int ,struct thread**,int ,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int svc_thread_start ;

__attribute__((used)) static void
svc_new_thread(SVCGROUP *grp)
{
 SVCPOOL *pool = grp->sg_pool;
 struct thread *td;

 mtx_lock(&grp->sg_lock);
 grp->sg_threadcount++;
 mtx_unlock(&grp->sg_lock);
 kthread_add(svc_thread_start, grp, pool->sp_proc, &td, 0, 0,
     "%s: service", pool->sp_name);
}
