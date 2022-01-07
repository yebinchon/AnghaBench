
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sockaddr_ng {int sg_data; } ;
struct sockaddr {int dummy; } ;
struct ngsock {int mtx; int refs; TYPE_2__* node; struct ngpcb* datasock; } ;
struct ngpcb {int node_id; struct ngsock* sockdata; } ;
typedef TYPE_3__* node_p ;
typedef TYPE_4__* item_p ;
struct TYPE_12__ {TYPE_3__* el_dest; } ;
struct TYPE_11__ {TYPE_1__* nd_type; } ;
struct TYPE_10__ {int nd_ID; } ;
struct TYPE_9__ {int name; } ;


 int EADDRINUSE ;
 int EINVAL ;
 int EISCONN ;
 int NG_FREE_ITEM (TYPE_4__*) ;
 struct ngsock* NG_NODE_PRIVATE (TYPE_3__*) ;
 int NG_SOCKET_NODE_TYPE ;
 int NG_WAITOK ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_address_path (int *,TYPE_4__*,int ,int ) ;
 TYPE_4__* ng_package_data (int *,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
ng_connect_data(struct sockaddr *nam, struct ngpcb *pcbp)
{
 struct sockaddr_ng *sap;
 node_p farnode;
 struct ngsock *priv;
 int error;
 item_p item;


 if (pcbp->sockdata != ((void*)0))
  return (EISCONN);







 sap = (struct sockaddr_ng *) nam;

 item = ng_package_data(((void*)0), NG_WAITOK);

 if ((error = ng_address_path(((void*)0), item, sap->sg_data, 0)))
  return (error);






 farnode = item->el_dest;
 if (strcmp(farnode->nd_type->name, NG_SOCKET_NODE_TYPE) != 0) {
  NG_FREE_ITEM(item);
  return (EINVAL);
 }
 priv = NG_NODE_PRIVATE(farnode);
 if (priv->datasock != ((void*)0)) {
  NG_FREE_ITEM(item);
  return (EADDRINUSE);
 }





 mtx_lock(&priv->mtx);
 priv->datasock = pcbp;
 pcbp->sockdata = priv;
 pcbp->node_id = priv->node->nd_ID;
 priv->refs++;
 mtx_unlock(&priv->mtx);
 NG_FREE_ITEM(item);
 return (0);
}
