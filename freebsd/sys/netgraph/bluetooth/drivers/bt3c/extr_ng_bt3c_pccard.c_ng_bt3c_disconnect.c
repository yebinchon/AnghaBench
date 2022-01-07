
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * hook_p ;
typedef TYPE_1__* bt3c_softc_p ;
struct TYPE_2__ {int * hook; int outq; int inq; } ;


 int EINVAL ;
 int IF_DRAIN (int *) ;
 int NG_HOOK_NODE (int *) ;
 int NG_NODE_PRIVATE (int ) ;

__attribute__((used)) static int
ng_bt3c_disconnect(hook_p hook)
{
 bt3c_softc_p sc = (bt3c_softc_p) NG_NODE_PRIVATE(NG_HOOK_NODE(hook));






 if (sc != ((void*)0)) {
  if (hook != sc->hook)
   return (EINVAL);

  IF_DRAIN(&sc->inq);
  IF_DRAIN(&sc->outq);

  sc->hook = ((void*)0);
 }

 return (0);
}
