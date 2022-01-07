
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vi_info {int dummy; } ;
struct adapter {char* last_op; scalar_t__ last_op_flags; int last_op_thr; int sc_lock; int flags; } ;


 int ADAPTER_LOCK (struct adapter*) ;
 int ADAPTER_UNLOCK (struct adapter*) ;
 scalar_t__ IS_BUSY (struct adapter*) ;
 int SET_BUSY (struct adapter*) ;
 int SET_DOOMED (struct vi_info*) ;
 int curthread ;
 int mtx_sleep (int *,int *,int ,char*,int ) ;
 int wakeup (int *) ;

void
doom_vi(struct adapter *sc, struct vi_info *vi)
{

 ADAPTER_LOCK(sc);
 SET_DOOMED(vi);
 wakeup(&sc->flags);
 while (IS_BUSY(sc))
  mtx_sleep(&sc->flags, &sc->sc_lock, 0, "t4detach", 0);
 SET_BUSY(sc);





 ADAPTER_UNLOCK(sc);
}
