
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct rawcb* so_pcb; } ;
struct rawcb {struct socket* rcb_socket; } ;
typedef int caddr_t ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct rawcb*,int ) ;
 int M_PCB ;
 int free (int ,int ) ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rawcb_mtx ;

void
raw_detach(struct rawcb *rp)
{
 struct socket *so = rp->rcb_socket;

 KASSERT(so->so_pcb == rp, ("raw_detach: so_pcb != rp"));

 so->so_pcb = ((void*)0);
 mtx_lock(&rawcb_mtx);
 LIST_REMOVE(rp, list);
 mtx_unlock(&rawcb_mtx);
 free((caddr_t)(rp), M_PCB);
}
