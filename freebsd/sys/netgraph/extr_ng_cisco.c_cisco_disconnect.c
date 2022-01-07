
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct protoent {int af; int * hook; } ;
typedef TYPE_1__* sc_p ;
typedef int hook_p ;
struct TYPE_3__ {int handle; } ;


 int NG_HOOK_NODE (int ) ;
 struct protoent* NG_HOOK_PRIVATE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int ng_rmnode_self (int ) ;
 int ng_uncallout (int *,int ) ;

__attribute__((used)) static int
cisco_disconnect(hook_p hook)
{
 const sc_p sc = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct protoent *pep;


 if ((pep = NG_HOOK_PRIVATE(hook))) {
  pep->hook = ((void*)0);
  if (pep->af == 0xffff)

   ng_uncallout(&sc->handle, NG_HOOK_NODE(hook));
 }


 if ((NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0)
 && (NG_NODE_IS_VALID(NG_HOOK_NODE(hook))))
  ng_rmnode_self(NG_HOOK_NODE(hook));
 return (0);
}
