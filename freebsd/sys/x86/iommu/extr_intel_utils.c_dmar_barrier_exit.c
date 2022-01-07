
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct dmar_unit {int barrier_flags; int unit; } ;


 int BARRIER_F ;
 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 int f_done ;
 int f_inproc ;
 int f_wakeup ;
 int wakeup (int*) ;

void
dmar_barrier_exit(struct dmar_unit *dmar, u_int barrier_id)
{
 BARRIER_F;

 DMAR_ASSERT_LOCKED(dmar);
 KASSERT((dmar->barrier_flags & (f_done | f_inproc)) == f_inproc,
     ("dmar%d barrier %d missed entry", dmar->unit, barrier_id));
 dmar->barrier_flags |= f_done;
 if ((dmar->barrier_flags & f_wakeup) != 0)
  wakeup(&dmar->barrier_flags);
 dmar->barrier_flags &= ~(f_inproc | f_wakeup);
 DMAR_UNLOCK(dmar);
}
