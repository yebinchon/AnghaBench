
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int hook_p ;
struct TYPE_3__ {int flags; int node; int handle; } ;


 int NG_HOOK_NODE (int ) ;
 int * NG_HOOK_PRIVATE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int SCF_CONNECTED ;
 int ng_rmnode_self (int ) ;
 int ng_uncallout (int *,int ) ;

__attribute__((used)) static int
nglmi_disconnect(hook_p hook)
{
 const sc_p sc = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));


 if (NG_HOOK_PRIVATE(hook) == ((void*)0))
  return (0);


 if (sc->flags & SCF_CONNECTED)
  ng_uncallout(&sc->handle, sc->node);


 if (NG_NODE_IS_VALID(NG_HOOK_NODE(hook)))
  ng_rmnode_self(NG_HOOK_NODE(hook));
 return (0);
}
