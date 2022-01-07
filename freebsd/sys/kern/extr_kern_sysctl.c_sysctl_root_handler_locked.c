
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;
struct sysctl_oid {int oid_kind; int (* oid_handler ) (struct sysctl_oid*,void*,int ,struct sysctl_req*) ;int oid_running; } ;
struct rm_priotracker {int dummy; } ;
typedef int intmax_t ;


 int CTLFLAG_DYING ;
 int CTLFLAG_DYN ;
 int CTLFLAG_MPSAFE ;
 int Giant ;
 int KFAIL_POINT_ERROR (int ,int ,int) ;
 int SYSCTL_RLOCK (struct rm_priotracker*) ;
 int SYSCTL_RUNLOCK (struct rm_priotracker*) ;
 int SYSCTL_WLOCK () ;
 int SYSCTL_WUNLOCK () ;
 int _debug_fail_point ;
 int atomic_add_int (int *,int) ;
 int atomic_fetchadd_int (int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct sysctl_oid*,void*,int ,struct sysctl_req*) ;
 int sysctl_running ;
 int wakeup (int *) ;

__attribute__((used)) static int
sysctl_root_handler_locked(struct sysctl_oid *oid, void *arg1, intmax_t arg2,
    struct sysctl_req *req, struct rm_priotracker *tracker)
{
 int error;

 if (oid->oid_kind & CTLFLAG_DYN)
  atomic_add_int(&oid->oid_running, 1);

 if (tracker != ((void*)0))
  SYSCTL_RUNLOCK(tracker);
 else
  SYSCTL_WUNLOCK();

 if (!(oid->oid_kind & CTLFLAG_MPSAFE))
  mtx_lock(&Giant);
 error = oid->oid_handler(oid, arg1, arg2, req);
 if (!(oid->oid_kind & CTLFLAG_MPSAFE))
  mtx_unlock(&Giant);

 KFAIL_POINT_ERROR(_debug_fail_point, sysctl_running, error);

 if (tracker != ((void*)0))
  SYSCTL_RLOCK(tracker);
 else
  SYSCTL_WLOCK();

 if (oid->oid_kind & CTLFLAG_DYN) {
  if (atomic_fetchadd_int(&oid->oid_running, -1) == 1 &&
      (oid->oid_kind & CTLFLAG_DYING) != 0)
   wakeup(&oid->oid_running);
 }

 return (error);
}
