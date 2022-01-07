
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubt_softc {int dummy; } ;
typedef int hook_p ;


 int NG_HOOK_FORCE_QUEUE (int ) ;
 int NG_HOOK_NODE (int ) ;
 int NG_HOOK_PEER (int ) ;
 struct ubt_softc* NG_NODE_PRIVATE (int ) ;
 int UBT_FLAG_T_START_ALL ;
 int UBT_NG_LOCK (struct ubt_softc*) ;
 int UBT_NG_UNLOCK (struct ubt_softc*) ;
 int ubt_task_schedule (struct ubt_softc*,int ) ;

__attribute__((used)) static int
ng_ubt_connect(hook_p hook)
{
 struct ubt_softc *sc = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));

 NG_HOOK_FORCE_QUEUE(NG_HOOK_PEER(hook));

 UBT_NG_LOCK(sc);
 ubt_task_schedule(sc, UBT_FLAG_T_START_ALL);
 UBT_NG_UNLOCK(sc);

 return (0);
}
