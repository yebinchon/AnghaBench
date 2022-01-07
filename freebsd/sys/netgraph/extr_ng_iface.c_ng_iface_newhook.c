
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int priv_p ;
typedef int node_p ;
typedef int * iffam_p ;
typedef int * hook_p ;


 int EISCONN ;
 int EPFNOSUPPORT ;
 int NG_HOOK_HI_STACK (int *) ;
 int NG_HOOK_SET_TO_INBOUND (int *) ;
 int NG_NODE_PRIVATE (int ) ;
 int PRIV_WLOCK (int const) ;
 int PRIV_WUNLOCK (int const) ;
 int ** get_hook_from_iffam (int const,int * const) ;
 int * get_iffam_from_name (char const*) ;

__attribute__((used)) static int
ng_iface_newhook(node_p node, hook_p hook, const char *name)
{
 const iffam_p iffam = get_iffam_from_name(name);
 const priv_p priv = NG_NODE_PRIVATE(node);
 hook_p *hookptr;

 if (iffam == ((void*)0))
  return (EPFNOSUPPORT);
 PRIV_WLOCK(priv);
 hookptr = get_hook_from_iffam(priv, iffam);
 if (*hookptr != ((void*)0)) {
  PRIV_WUNLOCK(priv);
  return (EISCONN);
 }
 *hookptr = hook;
 NG_HOOK_HI_STACK(hook);
 NG_HOOK_SET_TO_INBOUND(hook);
 PRIV_WUNLOCK(priv);
 return (0);
}
