
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ctxinfo {int dlci; scalar_t__ flags; int * hook; } ;
typedef TYPE_1__* sc_p ;
typedef int hook_p ;
struct TYPE_3__ {int datahooks; scalar_t__* ALT; } ;


 int NG_HOOK_NODE (int ) ;
 struct ctxinfo* NG_HOOK_PRIVATE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ngfrm_disconnect(hook_p hook)
{
 const sc_p sc = NG_NODE_PRIVATE(NG_HOOK_NODE(hook));
 struct ctxinfo *const cp = NG_HOOK_PRIVATE(hook);
 int dlci;


 if (cp != ((void*)0)) {
  cp->hook = ((void*)0);
  dlci = cp->dlci;
  if (dlci != -1)
   sc->ALT[dlci] = 0;
  cp->flags = 0;
  sc->datahooks--;
 }
 if ((NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0)
 && (NG_NODE_IS_VALID(NG_HOOK_NODE(hook))))
  ng_rmnode_self(NG_HOOK_NODE(hook));
 return (0);
}
