
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct filedesc_to_leader {int fdl_refcount; struct filedesc_to_leader* fdl_prev; struct filedesc_to_leader* fdl_next; struct proc* fdl_leader; scalar_t__ fdl_wakeup; scalar_t__ fdl_holdcount; } ;
struct filedesc {int dummy; } ;


 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int M_FILEDESC_TO_LEADER ;
 int M_WAITOK ;
 struct filedesc_to_leader* malloc (int,int ,int ) ;

struct filedesc_to_leader *
filedesc_to_leader_alloc(struct filedesc_to_leader *old, struct filedesc *fdp, struct proc *leader)
{
 struct filedesc_to_leader *fdtol;

 fdtol = malloc(sizeof(struct filedesc_to_leader),
     M_FILEDESC_TO_LEADER, M_WAITOK);
 fdtol->fdl_refcount = 1;
 fdtol->fdl_holdcount = 0;
 fdtol->fdl_wakeup = 0;
 fdtol->fdl_leader = leader;
 if (old != ((void*)0)) {
  FILEDESC_XLOCK(fdp);
  fdtol->fdl_next = old->fdl_next;
  fdtol->fdl_prev = old;
  old->fdl_next = fdtol;
  fdtol->fdl_next->fdl_prev = fdtol;
  FILEDESC_XUNLOCK(fdp);
 } else {
  fdtol->fdl_next = fdtol;
  fdtol->fdl_prev = fdtol;
 }
 return (fdtol);
}
