
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {TYPE_2__* so_proto; } ;
struct TYPE_6__ {int sp_protocol; int sp_family; } ;
struct rawcb {TYPE_3__ rcb_proto; struct socket* rcb_socket; } ;
struct TYPE_5__ {TYPE_1__* pr_domain; } ;
struct TYPE_4__ {int dom_family; } ;


 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct rawcb*,int ) ;
 int V_rawcb_list ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int raw_recvspace ;
 int raw_sendspace ;
 int rawcb_mtx ;
 int soreserve (struct socket*,int ,int ) ;
 struct rawcb* sotorawcb (struct socket*) ;

int
raw_attach(struct socket *so, int proto)
{
 struct rawcb *rp = sotorawcb(so);
 int error;







 KASSERT(rp != ((void*)0), ("raw_attach: rp == NULL"));

 error = soreserve(so, raw_sendspace, raw_recvspace);
 if (error)
  return (error);
 rp->rcb_socket = so;
 rp->rcb_proto.sp_family = so->so_proto->pr_domain->dom_family;
 rp->rcb_proto.sp_protocol = proto;
 mtx_lock(&rawcb_mtx);
 LIST_INSERT_HEAD(&V_rawcb_list, rp, list);
 mtx_unlock(&rawcb_mtx);
 return (0);
}
