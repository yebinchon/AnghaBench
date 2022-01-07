
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubt_softc {int * sc_hook; } ;
typedef int node_p ;
typedef int * hook_p ;


 int EINVAL ;
 int EISCONN ;
 struct ubt_softc* NG_NODE_PRIVATE (int ) ;
 int NG_UBT_HOOK ;
 int UBT_NG_LOCK (struct ubt_softc*) ;
 int UBT_NG_UNLOCK (struct ubt_softc*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_ubt_newhook(node_p node, hook_p hook, char const *name)
{
 struct ubt_softc *sc = NG_NODE_PRIVATE(node);

 if (strcmp(name, NG_UBT_HOOK) != 0)
  return (EINVAL);

 UBT_NG_LOCK(sc);
 if (sc->sc_hook != ((void*)0)) {
  UBT_NG_UNLOCK(sc);

  return (EISCONN);
 }

 sc->sc_hook = hook;
 UBT_NG_UNLOCK(sc);

 return (0);
}
