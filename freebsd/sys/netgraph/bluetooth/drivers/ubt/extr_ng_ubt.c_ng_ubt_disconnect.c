
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubt_softc {int sc_scoq; int sc_aclq; int sc_cmdq; int * sc_hook; } ;
typedef int * hook_p ;


 int EINVAL ;
 int NG_BT_MBUFQ_DRAIN (int *) ;
 int NG_HOOK_NODE (int *) ;
 struct ubt_softc* NG_NODE_PRIVATE (int ) ;
 int UBT_FLAG_T_STOP_ALL ;
 int UBT_NG_LOCK (struct ubt_softc*) ;
 int UBT_NG_UNLOCK (struct ubt_softc*) ;
 int ubt_task_schedule (struct ubt_softc*,int ) ;

__attribute__((used)) static int
ng_ubt_disconnect(hook_p hook)
{
 struct ubt_softc *sc = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 UBT_NG_LOCK(sc);

 if (hook != sc->sc_hook) {
  UBT_NG_UNLOCK(sc);

  return (EINVAL);
 }

 sc->sc_hook = ((void*)0);


 ubt_task_schedule(sc, UBT_FLAG_T_STOP_ALL);


 NG_BT_MBUFQ_DRAIN(&sc->sc_cmdq);
 NG_BT_MBUFQ_DRAIN(&sc->sc_aclq);
 NG_BT_MBUFQ_DRAIN(&sc->sc_scoq);

 UBT_NG_UNLOCK(sc);

 return (0);
}
