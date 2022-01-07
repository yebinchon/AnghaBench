
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udbp_softc {int sc_mtx; int * sc_hook; } ;
typedef int node_p ;
typedef int int32_t ;
typedef int * hook_p ;


 int EINVAL ;
 int EISCONN ;
 int NG_HOOK_SET_PRIVATE (int *,int *) ;
 struct udbp_softc* NG_NODE_PRIVATE (int ) ;
 int NG_UDBP_HOOK_NAME ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_udbp_newhook(node_p node, hook_p hook, const char *name)
{
 struct udbp_softc *sc = NG_NODE_PRIVATE(node);
 int32_t error = 0;

 if (strcmp(name, NG_UDBP_HOOK_NAME)) {
  return (EINVAL);
 }
 mtx_lock(&sc->sc_mtx);

 if (sc->sc_hook != ((void*)0)) {
  error = EISCONN;
 } else {
  sc->sc_hook = hook;
  NG_HOOK_SET_PRIVATE(hook, ((void*)0));
 }

 mtx_unlock(&sc->sc_mtx);

 return (error);
}
