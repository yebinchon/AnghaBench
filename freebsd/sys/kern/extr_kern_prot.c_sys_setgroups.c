
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
struct setgroups_args {int gidsetsize; int gidset; } ;
typedef int gid_t ;


 int EINVAL ;
 int M_TEMP ;
 int M_WAITOK ;
 int XU_NGROUPS ;
 int copyin (int ,int *,int) ;
 int free (int *,int ) ;
 int kern_setgroups (struct thread*,int,int *) ;
 int * malloc (int,int ,int ) ;
 int ngroups_max ;

int
sys_setgroups(struct thread *td, struct setgroups_args *uap)
{
 gid_t smallgroups[XU_NGROUPS];
 gid_t *groups;
 u_int gidsetsize;
 int error;

 gidsetsize = uap->gidsetsize;
 if (gidsetsize > ngroups_max + 1)
  return (EINVAL);

 if (gidsetsize > XU_NGROUPS)
  groups = malloc(gidsetsize * sizeof(gid_t), M_TEMP, M_WAITOK);
 else
  groups = smallgroups;

 error = copyin(uap->gidset, groups, gidsetsize * sizeof(gid_t));
 if (error == 0)
  error = kern_setgroups(td, gidsetsize, groups);

 if (gidsetsize > XU_NGROUPS)
  free(groups, M_TEMP);
 return (error);
}
