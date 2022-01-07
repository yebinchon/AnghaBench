
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * node_p ;
typedef int hook_p ;


 int * NG_HOOK_NODE (int ) ;
 int ng_deadnode ;
 int ng_rmhook_part2 ;
 int ng_send_fn (int *,int ,int *,int *,int ) ;

int
ng_rmhook_self(hook_p hook)
{
 int error;
 node_p node = NG_HOOK_NODE(hook);

 if (node == &ng_deadnode)
  return (0);

 error = ng_send_fn(node, hook, &ng_rmhook_part2, ((void*)0), 0);
 return (error);
}
