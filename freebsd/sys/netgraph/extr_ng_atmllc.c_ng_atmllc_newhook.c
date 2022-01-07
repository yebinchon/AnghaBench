
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_atmllc_priv {int * fddi; int * ether; int * atm; } ;
typedef int node_p ;
typedef void* hook_p ;


 int EINVAL ;
 int EISCONN ;
 int NG_ATMLLC_HOOK_ATM ;
 int NG_ATMLLC_HOOK_ETHER ;
 int NG_ATMLLC_HOOK_FDDI ;
 struct ng_atmllc_priv* NG_NODE_PRIVATE (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_atmllc_newhook(node_p node, hook_p hook, const char *name)
{
 struct ng_atmllc_priv *priv;

 priv = NG_NODE_PRIVATE(node);

 if (strcmp(name, NG_ATMLLC_HOOK_ATM) == 0) {
  if (priv->atm != ((void*)0)) {
   return (EISCONN);
  }
  priv->atm = hook;
 } else if (strcmp(name, NG_ATMLLC_HOOK_ETHER) == 0) {
  if (priv->ether != ((void*)0)) {
   return (EISCONN);
  }
  priv->ether = hook;
 } else if (strcmp(name, NG_ATMLLC_HOOK_FDDI) == 0) {
  if (priv->fddi != ((void*)0)) {
   return (EISCONN);
  }
  priv->fddi = hook;
 } else {
  return (EINVAL);
 }

 return (0);
}
