
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_p ;
typedef int hook_p ;


 int ng_destroy_hook (int ) ;

__attribute__((used)) static void
ng_rmhook_part2(node_p node, hook_p hook, void *arg1, int arg2)
{
 ng_destroy_hook(hook);
 return ;
}
