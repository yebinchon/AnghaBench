
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ubt_softc_p ;
struct mbuf {int dummy; } ;
typedef int * hook_p ;
struct TYPE_6__ {int * sc_hook; } ;


 int ENETDOWN ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HOOK_REF (int *) ;
 int NG_HOOK_UNREF (int *) ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;
 int UBT_NG_LOCK (TYPE_1__*) ;
 int UBT_NG_UNLOCK (TYPE_1__*) ;
 int UBT_STAT_IERROR (TYPE_1__*) ;

__attribute__((used)) static int
ubt_fwd_mbuf_up(ubt_softc_p sc, struct mbuf **m)
{
 hook_p hook;
 int error;
 UBT_NG_LOCK(sc);
 if ((hook = sc->sc_hook) != ((void*)0))
  NG_HOOK_REF(hook);
 UBT_NG_UNLOCK(sc);

 if (hook == ((void*)0)) {
  NG_FREE_M(*m);
  return (ENETDOWN);
 }

 NG_SEND_DATA_ONLY(error, hook, *m);
 NG_HOOK_UNREF(hook);

 if (error != 0)
  UBT_STAT_IERROR(sc);

 return (error);
}
