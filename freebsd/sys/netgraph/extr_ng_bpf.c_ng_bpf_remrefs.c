
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * hook_p ;
typedef TYPE_1__* hinfo_p ;
struct TYPE_3__ {int * nomatch; int * match; } ;


 TYPE_1__* NG_HOOK_PRIVATE (int *) ;

__attribute__((used)) static int
ng_bpf_remrefs(hook_p hook, void* arg)
{
 hinfo_p hip = NG_HOOK_PRIVATE(hook);
 hook_p h = (hook_p)arg;

 if (hip->match == h)
     hip->match = ((void*)0);
 if (hip->nomatch == h)
     hip->nomatch = ((void*)0);
 return (1);
}
