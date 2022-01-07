
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mtx {int dummy; } ;
typedef int sigset_t ;


 int PCATCH ;
 struct thread* curthread ;
 int msleep (void*,struct mtx*,int,char*,int) ;
 int newnfs_restore_sigmask (struct thread*,int *) ;
 int newnfs_set_sigmask (struct thread*,int *) ;

int
newnfs_msleep(struct thread *td, void *ident, struct mtx *mtx, int priority, char *wmesg, int timo)
{
 sigset_t oldset;
 int error;

 if ((priority & PCATCH) == 0)
  return msleep(ident, mtx, priority, wmesg, timo);
 if (td == ((void*)0))
  td = curthread;
 newnfs_set_sigmask(td, &oldset);
 error = msleep(ident, mtx, priority, wmesg, timo);
 newnfs_restore_sigmask(td, &oldset);
 return (error);
}
