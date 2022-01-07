
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hook_p ;


 int NG_HOOK_REF (int ) ;
 int NG_HOOK_SET_PRIVATE (int ,int *) ;

__attribute__((used)) static int
ng_btsocket_l2cap_raw_node_connect(hook_p hook)
{
 NG_HOOK_SET_PRIVATE(hook, ((void*)0));
 NG_HOOK_REF(hook);

 return (0);
}
