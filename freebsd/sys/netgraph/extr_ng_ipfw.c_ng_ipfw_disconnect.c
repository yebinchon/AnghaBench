
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hpriv_p ;
typedef int hook_p ;


 int M_NETGRAPH ;
 int NG_HOOK_PRIVATE (int ) ;
 int NG_HOOK_SET_PRIVATE (int ,int *) ;
 int free (int const,int ) ;

__attribute__((used)) static int
ng_ipfw_disconnect(hook_p hook)
{
 const hpriv_p hpriv = NG_HOOK_PRIVATE(hook);

 free(hpriv, M_NETGRAPH);
 NG_HOOK_SET_PRIVATE(hook, ((void*)0));

 return (0);
}
