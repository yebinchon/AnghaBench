
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct dmar_unit {int barrier_flags; int unit; int lock; } ;


 int BARRIER_F ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 int f_done ;
 int f_inproc ;
 int f_wakeup ;
 int msleep (int*,int *,int ,char*,int ) ;

bool
dmar_barrier_enter(struct dmar_unit *dmar, u_int barrier_id)
{
 BARRIER_F;

 DMAR_LOCK(dmar);
 if ((dmar->barrier_flags & f_done) != 0) {
  DMAR_UNLOCK(dmar);
  return (0);
 }

 if ((dmar->barrier_flags & f_inproc) != 0) {
  while ((dmar->barrier_flags & f_inproc) != 0) {
   dmar->barrier_flags |= f_wakeup;
   msleep(&dmar->barrier_flags, &dmar->lock, 0,
       "dmarb", 0);
  }
  KASSERT((dmar->barrier_flags & f_done) != 0,
      ("dmar%d barrier %d missing done", dmar->unit, barrier_id));
  DMAR_UNLOCK(dmar);
  return (0);
 }

 dmar->barrier_flags |= f_inproc;
 DMAR_UNLOCK(dmar);
 return (1);
}
