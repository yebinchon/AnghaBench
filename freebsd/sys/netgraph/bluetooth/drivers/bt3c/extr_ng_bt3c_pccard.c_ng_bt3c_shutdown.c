
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * node_p ;
typedef TYPE_1__* bt3c_softc_p ;
struct TYPE_3__ {int * node; int dev; } ;


 int NG_NODE_PRIVATE (int *) ;
 int NG_NODE_SET_PRIVATE (int *,TYPE_1__*) ;
 int NG_NODE_UNREF (int *) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ ng_make_node_common (int *,int **) ;
 scalar_t__ ng_name_node (int *,int ) ;
 int typestruct ;

__attribute__((used)) static int
ng_bt3c_shutdown(node_p node)
{
 bt3c_softc_p sc = (bt3c_softc_p) NG_NODE_PRIVATE(node);


 NG_NODE_SET_PRIVATE(node, ((void*)0));
 NG_NODE_UNREF(node);


 if (sc == ((void*)0))
  goto out;


 if (ng_make_node_common(&typestruct, &sc->node) != 0) {
  device_printf(sc->dev, "Could not create Netgraph node\n");
  sc->node = ((void*)0);
  goto out;
 }


 if (ng_name_node(sc->node, device_get_nameunit(sc->dev)) != 0) {
  device_printf(sc->dev, "Could not name Netgraph node\n");
  NG_NODE_UNREF(sc->node);
  sc->node = ((void*)0);
  goto out;
 }

 NG_NODE_SET_PRIVATE(sc->node, sc);
out:
 return (0);
}
