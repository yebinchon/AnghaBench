
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int node_p ;
typedef int * hook_p ;
typedef TYPE_1__* bt3c_softc_p ;
struct TYPE_2__ {int * hook; } ;


 int EINVAL ;
 int EISCONN ;
 int NG_BT3C_HOOK ;
 int NG_NODE_PRIVATE (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_bt3c_newhook(node_p node, hook_p hook, char const *name)
{
 bt3c_softc_p sc = (bt3c_softc_p) NG_NODE_PRIVATE(node);

 if (strcmp(name, NG_BT3C_HOOK) != 0)
  return (EINVAL);

 if (sc->hook != ((void*)0))
  return (EISCONN);

 sc->hook = hook;

 return (0);
}
