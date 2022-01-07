
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct thread {int td_ucred; } ;
struct ksem_getvalue_args {int val; int id; } ;
struct ksem {int ks_value; int ks_atime; } ;
struct file {int f_cred; struct ksem* f_data; } ;
typedef int cap_rights_t ;


 int AUDIT_ARG_FD (int ) ;
 int CAP_SEM_GETVALUE ;
 int cap_rights_init (int *,int ) ;
 int copyout (int*,int ,int) ;
 int fdrop (struct file*,struct thread*) ;
 int ksem_get (struct thread*,int ,int ,struct file**) ;
 int mac_posixsem_check_getvalue (int ,int ,struct ksem*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sem_lock ;
 int vfs_timestamp (int *) ;

int
sys_ksem_getvalue(struct thread *td, struct ksem_getvalue_args *uap)
{
 cap_rights_t rights;
 struct file *fp;
 struct ksem *ks;
 int error, val;

 AUDIT_ARG_FD(uap->id);
 error = ksem_get(td, uap->id,
     cap_rights_init(&rights, CAP_SEM_GETVALUE), &fp);
 if (error)
  return (error);
 ks = fp->f_data;

 mtx_lock(&sem_lock);
 val = ks->ks_value;
 vfs_timestamp(&ks->ks_atime);
 mtx_unlock(&sem_lock);
 fdrop(fp, td);
 error = copyout(&val, uap->val, sizeof(val));
 return (error);
}
