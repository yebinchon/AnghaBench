
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hook_p ;


 int NG_HOOK_FORCE_QUEUE (int ) ;
 int NG_HOOK_PEER (int ) ;

__attribute__((used)) static int
ng_gif_connect(hook_p hook)
{
 NG_HOOK_FORCE_QUEUE(NG_HOOK_PEER(hook));
 return (0);
}
