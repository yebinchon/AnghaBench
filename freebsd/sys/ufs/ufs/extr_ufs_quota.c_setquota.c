
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct dqblk64 {int dummy; } ;
typedef int dqb64 ;


 int _setquota (struct thread*,struct mount*,int ,int,struct dqblk64*) ;
 int copyin (void*,struct dqblk64*,int) ;

int
setquota(struct thread *td, struct mount *mp, u_long id, int type, void *addr)
{
 struct dqblk64 dqb64;
 int error;

 error = copyin(addr, &dqb64, sizeof(dqb64));
 if (error)
  return (error);
 error = _setquota(td, mp, id, type, &dqb64);
 return (error);
}
