
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
struct timespec {int dummy; } ;
struct thread {TYPE_1__* td_proc; int td_ucred; } ;
struct ksem {scalar_t__ ks_value; int ks_waiters; int ks_cv; int ks_atime; } ;
struct file {int f_cred; struct ksem* f_data; } ;
typedef int semid_t ;
typedef int cap_rights_t ;
struct TYPE_2__ {scalar_t__ p_pid; } ;


 int AUDIT_ARG_FD (int ) ;
 int CAP_SEM_WAIT ;
 int DP (char*) ;
 int EAGAIN ;
 int ETIMEDOUT ;
 int EWOULDBLOCK ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int cap_rights_init (int *,int ) ;
 int cv_timedwait_sig (int *,int *,int ) ;
 int cv_wait_sig (int *,int *) ;
 int fdrop (struct file*,struct thread*) ;
 int getnanotime (struct timespec*) ;
 int ksem_get (struct thread*,int ,int ,struct file**) ;
 int mac_posixsem_check_wait (int ,int ,struct ksem*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sem_lock ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;
 int tvtohz (struct timeval*) ;
 int vfs_timestamp (int *) ;

__attribute__((used)) static int
kern_sem_wait(struct thread *td, semid_t id, int tryflag,
    struct timespec *abstime)
{
 struct timespec ts1, ts2;
 struct timeval tv;
 cap_rights_t rights;
 struct file *fp;
 struct ksem *ks;
 int error;

 DP((">>> kern_sem_wait entered! pid=%d\n", (int)td->td_proc->p_pid));
 AUDIT_ARG_FD(id);
 error = ksem_get(td, id, cap_rights_init(&rights, CAP_SEM_WAIT), &fp);
 if (error)
  return (error);
 ks = fp->f_data;
 mtx_lock(&sem_lock);
 DP((">>> kern_sem_wait critical section entered! pid=%d\n",
     (int)td->td_proc->p_pid));







 DP(("kern_sem_wait value = %d, tryflag %d\n", ks->ks_value, tryflag));
 vfs_timestamp(&ks->ks_atime);
 while (ks->ks_value == 0) {
  ks->ks_waiters++;
  if (tryflag != 0)
   error = EAGAIN;
  else if (abstime == ((void*)0))
   error = cv_wait_sig(&ks->ks_cv, &sem_lock);
  else {
   for (;;) {
    ts1 = *abstime;
    getnanotime(&ts2);
    timespecsub(&ts1, &ts2, &ts1);
    TIMESPEC_TO_TIMEVAL(&tv, &ts1);
    if (tv.tv_sec < 0) {
     error = ETIMEDOUT;
     break;
    }
    error = cv_timedwait_sig(&ks->ks_cv,
        &sem_lock, tvtohz(&tv));
    if (error != EWOULDBLOCK)
     break;
   }
  }
  ks->ks_waiters--;
  if (error)
   goto err;
 }
 ks->ks_value--;
 DP(("kern_sem_wait value post-decrement = %d\n", ks->ks_value));
 error = 0;
err:
 mtx_unlock(&sem_lock);
 fdrop(fp, td);
 DP(("<<< kern_sem_wait leaving, pid=%d, error = %d\n",
     (int)td->td_proc->p_pid, error));
 return (error);
}
