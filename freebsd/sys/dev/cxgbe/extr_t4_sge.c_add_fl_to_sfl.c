
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {int flags; } ;
struct adapter {int sfl_lock; int sfl_callout; int sfl; } ;


 int FL_DOOMED ;
 int FL_LOCK (struct sge_fl*) ;
 int FL_STARVING ;
 int FL_UNLOCK (struct sge_fl*) ;
 int TAILQ_INSERT_TAIL (int *,struct sge_fl*,int ) ;
 int callout_reset (int *,int,int ,struct adapter*) ;
 int hz ;
 int link ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int refill_sfl ;

__attribute__((used)) static void
add_fl_to_sfl(struct adapter *sc, struct sge_fl *fl)
{
 mtx_lock(&sc->sfl_lock);
 FL_LOCK(fl);
 if ((fl->flags & FL_DOOMED) == 0) {
  fl->flags |= FL_STARVING;
  TAILQ_INSERT_TAIL(&sc->sfl, fl, link);
  callout_reset(&sc->sfl_callout, hz / 5, refill_sfl, sc);
 }
 FL_UNLOCK(fl);
 mtx_unlock(&sc->sfl_lock);
}
