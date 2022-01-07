
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ so_pcb; } ;
struct ngpcb {int type; struct socket* ng_socket; } ;
typedef scalar_t__ caddr_t ;


 int LIST_INSERT_HEAD (int *,struct ngpcb*,int ) ;
 int M_PCB ;
 int M_WAITOK ;
 int M_ZERO ;
 struct ngpcb* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ngpdg_recvspace ;
 int ngpdg_sendspace ;
 int ngsocketlist_mtx ;
 int ngsocklist ;
 int socks ;
 int soreserve (struct socket*,int ,int ) ;

__attribute__((used)) static int
ng_attach_common(struct socket *so, int type)
{
 struct ngpcb *pcbp;
 int error;


 error = soreserve(so, ngpdg_sendspace, ngpdg_recvspace);
 if (error)
  return (error);


 pcbp = malloc(sizeof(struct ngpcb), M_PCB, M_WAITOK | M_ZERO);
 pcbp->type = type;


 so->so_pcb = (caddr_t)pcbp;
 pcbp->ng_socket = so;


 mtx_lock(&ngsocketlist_mtx);
 LIST_INSERT_HEAD(&ngsocklist, pcbp, socks);
 mtx_unlock(&ngsocketlist_mtx);
 return (0);
}
