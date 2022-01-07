
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct ksem_post_args {int id; } ;
struct ksem {scalar_t__ ks_value; scalar_t__ ks_waiters; int ks_ctime; int ks_cv; } ;
struct file {int f_cred; struct ksem* f_data; } ;
typedef int cap_rights_t ;


 int AUDIT_ARG_FD (int ) ;
 int CAP_SEM_POST ;
 int EOVERFLOW ;
 scalar_t__ SEM_VALUE_MAX ;
 int cap_rights_init (int *,int ) ;
 int cv_signal (int *) ;
 int fdrop (struct file*,struct thread*) ;
 int ksem_get (struct thread*,int ,int ,struct file**) ;
 int mac_posixsem_check_post (int ,int ,struct ksem*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sem_lock ;
 int vfs_timestamp (int *) ;

int
sys_ksem_post(struct thread *td, struct ksem_post_args *uap)
{
 cap_rights_t rights;
 struct file *fp;
 struct ksem *ks;
 int error;

 AUDIT_ARG_FD(uap->id);
 error = ksem_get(td, uap->id,
     cap_rights_init(&rights, CAP_SEM_POST), &fp);
 if (error)
  return (error);
 ks = fp->f_data;

 mtx_lock(&sem_lock);





 if (ks->ks_value == SEM_VALUE_MAX) {
  error = EOVERFLOW;
  goto err;
 }
 ++ks->ks_value;
 if (ks->ks_waiters > 0)
  cv_signal(&ks->ks_cv);
 error = 0;
 vfs_timestamp(&ks->ks_ctime);
err:
 mtx_unlock(&sem_lock);
 fdrop(fp, td);
 return (error);
}
