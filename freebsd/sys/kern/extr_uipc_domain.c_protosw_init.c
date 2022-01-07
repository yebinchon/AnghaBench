
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct protosw {int (* pr_init ) () ;TYPE_1__* pr_domain; struct pr_usrreqs* pr_usrreqs; } ;
struct pr_usrreqs {int pru_ready; int pru_sopoll; int pru_soreceive; int pru_sosend; int pru_sockaddr; int pru_shutdown; int pru_sense; int pru_rcvoob; int pru_rcvd; int pru_peeraddr; int pru_listen; int pru_disconnect; int pru_control; int pru_connectat; int pru_connect2; int pru_connect; int pru_bindat; int pru_bind; int pru_aio_queue; int pru_accept; int * pru_send; int * pru_abort; int * pru_attach; } ;
struct TYPE_2__ {struct protosw* dom_protosw; int dom_name; } ;


 int DEFAULT (int ,int ) ;
 int KASSERT (int ,char*) ;
 int pru_accept_notsupp ;
 int pru_aio_queue_notsupp ;
 int pru_bind_notsupp ;
 int pru_bindat_notsupp ;
 int pru_connect2_notsupp ;
 int pru_connect_notsupp ;
 int pru_connectat_notsupp ;
 int pru_control_notsupp ;
 int pru_disconnect_notsupp ;
 int pru_listen_notsupp ;
 int pru_peeraddr_notsupp ;
 int pru_rcvd_notsupp ;
 int pru_rcvoob_notsupp ;
 int pru_ready_notsupp ;
 int pru_sense_null ;
 int pru_shutdown_notsupp ;
 int pru_sockaddr_notsupp ;
 int sopoll_generic ;
 int soreceive_generic ;
 int sosend_generic ;
 int stub1 () ;

__attribute__((used)) static void
protosw_init(struct protosw *pr)
{
 struct pr_usrreqs *pu;

 pu = pr->pr_usrreqs;
 KASSERT(pu != ((void*)0), ("protosw_init: %ssw[%d] has no usrreqs!",
     pr->pr_domain->dom_name,
     (int)(pr - pr->pr_domain->dom_protosw)));
 if ((pu->pru_accept) == ((void*)0)) (pu->pru_accept) = (pru_accept_notsupp);
 if ((pu->pru_aio_queue) == ((void*)0)) (pu->pru_aio_queue) = (pru_aio_queue_notsupp);
 if ((pu->pru_bind) == ((void*)0)) (pu->pru_bind) = (pru_bind_notsupp);
 if ((pu->pru_bindat) == ((void*)0)) (pu->pru_bindat) = (pru_bindat_notsupp);
 if ((pu->pru_connect) == ((void*)0)) (pu->pru_connect) = (pru_connect_notsupp);
 if ((pu->pru_connect2) == ((void*)0)) (pu->pru_connect2) = (pru_connect2_notsupp);
 if ((pu->pru_connectat) == ((void*)0)) (pu->pru_connectat) = (pru_connectat_notsupp);
 if ((pu->pru_control) == ((void*)0)) (pu->pru_control) = (pru_control_notsupp);
 if ((pu->pru_disconnect) == ((void*)0)) (pu->pru_disconnect) = (pru_disconnect_notsupp);
 if ((pu->pru_listen) == ((void*)0)) (pu->pru_listen) = (pru_listen_notsupp);
 if ((pu->pru_peeraddr) == ((void*)0)) (pu->pru_peeraddr) = (pru_peeraddr_notsupp);
 if ((pu->pru_rcvd) == ((void*)0)) (pu->pru_rcvd) = (pru_rcvd_notsupp);
 if ((pu->pru_rcvoob) == ((void*)0)) (pu->pru_rcvoob) = (pru_rcvoob_notsupp);
 if ((pu->pru_sense) == ((void*)0)) (pu->pru_sense) = (pru_sense_null);
 if ((pu->pru_shutdown) == ((void*)0)) (pu->pru_shutdown) = (pru_shutdown_notsupp);
 if ((pu->pru_sockaddr) == ((void*)0)) (pu->pru_sockaddr) = (pru_sockaddr_notsupp);
 if ((pu->pru_sosend) == ((void*)0)) (pu->pru_sosend) = (sosend_generic);
 if ((pu->pru_soreceive) == ((void*)0)) (pu->pru_soreceive) = (soreceive_generic);
 if ((pu->pru_sopoll) == ((void*)0)) (pu->pru_sopoll) = (sopoll_generic);
 if ((pu->pru_ready) == ((void*)0)) (pu->pru_ready) = (pru_ready_notsupp);

 if (pr->pr_init)
  (*pr->pr_init)();
}
