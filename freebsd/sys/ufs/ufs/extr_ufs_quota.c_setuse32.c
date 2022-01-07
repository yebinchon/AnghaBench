
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


 int _setuse (struct thread*,struct mount*,int ,int,struct dqblk64*) ;
 int copyin (void*,struct dqblk32*,int) ;
 int dqb32_dqb64 (struct dqblk32*,struct dqblk64*) ;

int
setuse32(struct thread *td, struct mount *mp, u_long id, int type, void *addr)
{
 struct dqblk32 dqb32;
 struct dqblk64 dqb64;
 int error;

 error = copyin(addr, &dqb32, sizeof(dqb32));
 if (error)
  return (error);
 dqb32_dqb64(&dqb32, &dqb64);
 error = _setuse(td, mp, id, type, &dqb64);
 return (error);
}
