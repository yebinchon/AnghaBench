
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udbp_softc {char* sc_name; int sc_mtx; int * sc_node; } ;
typedef int * node_p ;


 struct udbp_softc* NG_NODE_PRIVATE (int *) ;
 int NG_NODE_SET_PRIVATE (int *,struct udbp_softc*) ;
 int NG_NODE_UNREF (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ ng_make_node_common (int *,int **) ;
 scalar_t__ ng_name_node (int *,char*) ;
 int ng_udbp_typestruct ;
 int printf (char*,char*) ;

__attribute__((used)) static int
ng_udbp_rmnode(node_p node)
{
 struct udbp_softc *sc = NG_NODE_PRIVATE(node);


 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);

 if (sc == ((void*)0)) {
  goto done;
 }

 if (ng_make_node_common(&ng_udbp_typestruct, &sc->sc_node) != 0) {
  printf("%s: Could not create Netgraph node\n",
      sc->sc_name);
  sc->sc_node = ((void*)0);
  goto done;
 }

 if (ng_name_node(sc->sc_node, sc->sc_name) != 0) {
  printf("%s: Could not name Netgraph node\n",
      sc->sc_name);
  NG_NODE_UNREF(sc->sc_node);
  sc->sc_node = ((void*)0);
  goto done;
 }
 NG_NODE_SET_PRIVATE(sc->sc_node, sc);

done:
 if (sc) {
  mtx_unlock(&sc->sc_mtx);
 }
 return (0);
}
