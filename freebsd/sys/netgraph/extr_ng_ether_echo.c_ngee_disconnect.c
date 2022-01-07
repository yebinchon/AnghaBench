
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hook_p ;


 int NG_HOOK_NODE (int ) ;
 scalar_t__ NG_NODE_IS_VALID (int ) ;
 scalar_t__ NG_NODE_NUMHOOKS (int ) ;
 int ng_rmnode_self (int ) ;

__attribute__((used)) static int
ngee_disconnect(hook_p hook)
{
 if ((NG_NODE_NUMHOOKS(NG_HOOK_NODE(hook)) == 0)
 && (NG_NODE_IS_VALID(NG_HOOK_NODE(hook)))) {
  ng_rmnode_self(NG_HOOK_NODE(hook));
 }
 return (0);
}
