
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct dqblk64 {int dummy; } ;
struct dqblk32 {int dummy; } ;
typedef int dqb32 ;


 int _getquota (struct thread*,struct mount*,int ,int,struct dqblk64*) ;
 int copyout (struct dqblk32*,void*,int) ;
 int dqb64_dqb32 (struct dqblk64*,struct dqblk32*) ;

int
getquota32(struct thread *td, struct mount *mp, u_long id, int type, void *addr)
{
 struct dqblk32 dqb32;
 struct dqblk64 dqb64;
 int error;

 error = _getquota(td, mp, id, type, &dqb64);
 if (error)
  return (error);
 dqb64_dqb32(&dqb64, &dqb32);
 error = copyout(&dqb32, addr, sizeof(dqb32));
 return (error);
}
