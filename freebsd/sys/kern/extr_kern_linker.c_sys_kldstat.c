
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int version ;
struct thread {int dummy; } ;
struct kldstat_args {TYPE_1__* stat; int fileid; } ;
struct kld_file_stat_1 {int dummy; } ;
struct kld_file_stat {int dummy; } ;
struct TYPE_2__ {int version; } ;


 int EINVAL ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int copyin (int *,int*,int) ;
 int copyout (struct kld_file_stat*,TYPE_1__*,int) ;
 int free (struct kld_file_stat*,int ) ;
 int kern_kldstat (struct thread*,int ,struct kld_file_stat*) ;
 struct kld_file_stat* malloc (int,int ,int) ;

int
sys_kldstat(struct thread *td, struct kldstat_args *uap)
{
 struct kld_file_stat *stat;
 int error, version;




 if ((error = copyin(&uap->stat->version, &version, sizeof(version)))
     != 0)
  return (error);
 if (version != sizeof(struct kld_file_stat_1) &&
     version != sizeof(struct kld_file_stat))
  return (EINVAL);

 stat = malloc(sizeof(*stat), M_TEMP, M_WAITOK | M_ZERO);
 error = kern_kldstat(td, uap->fileid, stat);
 if (error == 0)
  error = copyout(stat, uap->stat, version);
 free(stat, M_TEMP);
 return (error);
}
