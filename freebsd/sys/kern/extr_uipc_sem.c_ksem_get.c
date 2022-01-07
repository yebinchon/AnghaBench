
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ksem {int ks_flags; } ;
struct file {scalar_t__ f_type; struct ksem* f_data; } ;
typedef int semid_t ;
typedef int cap_rights_t ;


 scalar_t__ DTYPE_SEM ;
 int EINVAL ;
 int KS_DEAD ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int ,int *,struct file**) ;

__attribute__((used)) static int
ksem_get(struct thread *td, semid_t id, cap_rights_t *rightsp,
    struct file **fpp)
{
 struct ksem *ks;
 struct file *fp;
 int error;

 error = fget(td, id, rightsp, &fp);
 if (error)
  return (EINVAL);
 if (fp->f_type != DTYPE_SEM) {
  fdrop(fp, td);
  return (EINVAL);
 }
 ks = fp->f_data;
 if (ks->ks_flags & KS_DEAD) {
  fdrop(fp, td);
  return (EINVAL);
 }
 *fpp = fp;
 return (0);
}
