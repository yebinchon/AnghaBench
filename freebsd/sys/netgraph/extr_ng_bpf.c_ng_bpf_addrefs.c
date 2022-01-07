
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* hook_p ;
typedef TYPE_2__* hinfo_p ;
struct TYPE_5__ {void* nomatch; TYPE_1__* prog; void* match; } ;
struct TYPE_4__ {int ifNotMatch; int ifMatch; } ;


 int NG_HOOK_NAME (void*) ;
 TYPE_2__* NG_HOOK_PRIVATE (void*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
ng_bpf_addrefs(hook_p hook, void* arg)
{
 hinfo_p hip = NG_HOOK_PRIVATE(hook);
 hook_p h = (hook_p)arg;

 if (strcmp(hip->prog->ifMatch, NG_HOOK_NAME(h)) == 0)
     hip->match = h;
 if (strcmp(hip->prog->ifNotMatch, NG_HOOK_NAME(h)) == 0)
     hip->nomatch = h;
 return (1);
}
