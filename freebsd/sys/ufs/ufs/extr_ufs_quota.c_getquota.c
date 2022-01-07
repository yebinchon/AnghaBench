
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct dqblk64 {int dummy; } ;
typedef int dqb64 ;


 int _getquota (struct thread*,struct mount*,int ,int,struct dqblk64*) ;
 int copyout (struct dqblk64*,void*,int) ;

int
getquota(struct thread *td, struct mount *mp, u_long id, int type, void *addr)
{
 struct dqblk64 dqb64;
 int error;

 error = _getquota(td, mp, id, type, &dqb64);
 if (error)
  return (error);
 error = copyout(&dqb64, addr, sizeof(dqb64));
 return (error);
}
