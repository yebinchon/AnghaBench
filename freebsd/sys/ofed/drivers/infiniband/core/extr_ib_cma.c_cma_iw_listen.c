
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct iw_cm_id* iw; } ;
struct TYPE_4__ {int device; } ;
struct rdma_id_private {TYPE_1__ cm_id; int tos; TYPE_2__ id; } ;
struct iw_cm_id {int local_addr; int tos; } ;


 scalar_t__ IS_ERR (struct iw_cm_id*) ;
 int PTR_ERR (struct iw_cm_id*) ;
 int cma_src_addr (struct rdma_id_private*) ;
 int iw_cm_listen (struct iw_cm_id*,int) ;
 int iw_conn_req_handler ;
 struct iw_cm_id* iw_create_cm_id (int ,int ,struct rdma_id_private*) ;
 int iw_destroy_cm_id (struct iw_cm_id*) ;
 int memcpy (int *,int ,int ) ;
 int rdma_addr_size (int ) ;

__attribute__((used)) static int cma_iw_listen(struct rdma_id_private *id_priv, int backlog)
{
 int ret;
 struct iw_cm_id *id;

 id = iw_create_cm_id(id_priv->id.device,
        iw_conn_req_handler,
        id_priv);
 if (IS_ERR(id))
  return PTR_ERR(id);

 id->tos = id_priv->tos;
 id_priv->cm_id.iw = id;

 memcpy(&id_priv->cm_id.iw->local_addr, cma_src_addr(id_priv),
        rdma_addr_size(cma_src_addr(id_priv)));

 ret = iw_cm_listen(id_priv->cm_id.iw, backlog);

 if (ret) {
  iw_destroy_cm_id(id_priv->cm_id.iw);
  id_priv->cm_id.iw = ((void*)0);
 }

 return ret;
}
