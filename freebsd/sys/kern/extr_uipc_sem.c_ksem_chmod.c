
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct ksem {int ks_mode; int ks_gid; int ks_uid; } ;
struct file {struct ksem* f_data; } ;
typedef int mode_t ;


 int ACCESSPERMS ;
 int VADMIN ;
 int VREG ;
 int mac_posixsem_check_setmode (struct ucred*,struct ksem*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sem_lock ;
 int vaccess (int ,int,int ,int ,int ,struct ucred*,int *) ;

__attribute__((used)) static int
ksem_chmod(struct file *fp, mode_t mode, struct ucred *active_cred,
    struct thread *td)
{
 struct ksem *ks;
 int error;

 error = 0;
 ks = fp->f_data;
 mtx_lock(&sem_lock);





 error = vaccess(VREG, ks->ks_mode, ks->ks_uid, ks->ks_gid, VADMIN,
     active_cred, ((void*)0));
 if (error != 0)
  goto out;
 ks->ks_mode = mode & ACCESSPERMS;
out:
 mtx_unlock(&sem_lock);
 return (error);
}
