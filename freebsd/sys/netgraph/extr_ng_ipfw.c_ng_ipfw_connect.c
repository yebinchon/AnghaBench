
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hook_p ;


 int NG_HOOK_FORCE_QUEUE (int ) ;

__attribute__((used)) static int
ng_ipfw_connect(hook_p hook)
{
 NG_HOOK_FORCE_QUEUE(hook);
 return (0);
}
