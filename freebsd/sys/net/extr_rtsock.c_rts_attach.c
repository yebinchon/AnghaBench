
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct socket {int so_options; int * so_pcb; int so_fibnum; } ;
struct TYPE_5__ {int sp_protocol; } ;
struct rawcb {TYPE_2__ rcb_proto; } ;
typedef int * caddr_t ;
struct TYPE_6__ {int any_count; int ip6_count; int ip_count; } ;
struct TYPE_4__ {int p_fibnum; } ;




 int KASSERT (int ,char*) ;
 int M_PCB ;
 int M_WAITOK ;
 int M_ZERO ;
 int RTSOCK_LOCK () ;
 int RTSOCK_UNLOCK () ;
 int SO_USELOOPBACK ;
 TYPE_3__ V_route_cb ;
 int free (struct rawcb*,int ) ;
 struct rawcb* malloc (int,int ,int) ;
 int raw_attach (struct socket*,int) ;
 int soisconnected (struct socket*) ;
 struct rawcb* sotorawcb (struct socket*) ;

__attribute__((used)) static int
rts_attach(struct socket *so, int proto, struct thread *td)
{
 struct rawcb *rp;
 int error;

 KASSERT(so->so_pcb == ((void*)0), ("rts_attach: so_pcb != NULL"));


 rp = malloc(sizeof *rp, M_PCB, M_WAITOK | M_ZERO);

 so->so_pcb = (caddr_t)rp;
 so->so_fibnum = td->td_proc->p_fibnum;
 error = raw_attach(so, proto);
 rp = sotorawcb(so);
 if (error) {
  so->so_pcb = ((void*)0);
  free(rp, M_PCB);
  return error;
 }
 RTSOCK_LOCK();
 switch(rp->rcb_proto.sp_protocol) {
 case 129:
  V_route_cb.ip_count++;
  break;
 case 128:
  V_route_cb.ip6_count++;
  break;
 }
 V_route_cb.any_count++;
 RTSOCK_UNLOCK();
 soisconnected(so);
 so->so_options |= SO_USELOOPBACK;
 return 0;
}
