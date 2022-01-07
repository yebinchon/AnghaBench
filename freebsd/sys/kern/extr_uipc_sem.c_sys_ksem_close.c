
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ksem_close_args {int id; } ;
struct ksem {int ks_flags; } ;
struct file {struct ksem* f_data; } ;


 int AUDIT_ARG_FD (int ) ;
 int EINVAL ;
 int KS_ANONYMOUS ;
 int cap_no_rights ;
 int fdrop (struct file*,struct thread*) ;
 int kern_close (struct thread*,int ) ;
 int ksem_get (struct thread*,int ,int *,struct file**) ;

int
sys_ksem_close(struct thread *td, struct ksem_close_args *uap)
{
 struct ksem *ks;
 struct file *fp;
 int error;


 AUDIT_ARG_FD(uap->id);
 error = ksem_get(td, uap->id, &cap_no_rights, &fp);
 if (error)
  return (error);
 ks = fp->f_data;
 if (ks->ks_flags & KS_ANONYMOUS) {
  fdrop(fp, td);
  return (EINVAL);
 }
 error = kern_close(td, uap->id);
 fdrop(fp, td);
 return (error);
}
