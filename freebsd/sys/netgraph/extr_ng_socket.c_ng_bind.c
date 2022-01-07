
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ng {int sg_len; char* sg_data; } ;
struct sockaddr {int dummy; } ;
struct ngsock {int node; } ;
struct ngpcb {struct ngsock* sockdata; } ;


 int EINVAL ;
 int NG_NODESIZ ;
 int TRAP_ERROR ;
 int ng_name_node (int ,char*) ;

__attribute__((used)) static int
ng_bind(struct sockaddr *nam, struct ngpcb *pcbp)
{
 struct ngsock *const priv = pcbp->sockdata;
 struct sockaddr_ng *const sap = (struct sockaddr_ng *) nam;

 if (priv == ((void*)0)) {
  TRAP_ERROR;
  return (EINVAL);
 }
 if ((sap->sg_len < 4) || (sap->sg_len > (NG_NODESIZ + 2)) ||
     (sap->sg_data[0] == '\0') ||
     (sap->sg_data[sap->sg_len - 3] != '\0')) {
  TRAP_ERROR;
  return (EINVAL);
 }
 return (ng_name_node(priv->node, sap->sg_data));
}
