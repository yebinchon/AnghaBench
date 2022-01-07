
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
typedef int hook_p ;
struct TYPE_5__ {int flags; scalar_t__ liv_per_full; int liv_rate; int handle; int livs; } ;


 int NG_LMI_POLL_RATE ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int SCF_AUTO ;
 int hz ;
 int ng_callout (int *,int ,int *,int,void (*) (int ,int ,void*,int),int *,int ) ;
 int ngauto_state_machine (TYPE_1__*) ;
 int nglmi_inquire (TYPE_1__*,int) ;

__attribute__((used)) static void
LMI_ticker(node_p node, hook_p hook, void *arg1, int arg2)
{
 sc_p sc = NG_NODE_PRIVATE(node);

 if (sc->flags & SCF_AUTO) {
  ngauto_state_machine(sc);
  ng_callout(&sc->handle, node, ((void*)0), NG_LMI_POLL_RATE * hz,
      LMI_ticker, ((void*)0), 0);
 } else {
  if (sc->livs++ >= sc->liv_per_full) {
   nglmi_inquire(sc, 1);

  } else {
   nglmi_inquire(sc, 0);
  }
  ng_callout(&sc->handle, node, ((void*)0), sc->liv_rate * hz,
      LMI_ticker, ((void*)0), 0);
 }
}
