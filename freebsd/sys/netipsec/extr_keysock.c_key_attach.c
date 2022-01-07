
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {int so_options; int * so_pcb; } ;
struct TYPE_4__ {scalar_t__ sp_protocol; } ;
struct TYPE_5__ {TYPE_1__ rcb_proto; } ;
struct keycb {TYPE_2__ kp_raw; scalar_t__ kp_registered; scalar_t__ kp_promisc; } ;
typedef void* caddr_t ;
struct TYPE_6__ {int any_count; int key_count; } ;


 int ENOBUFS ;
 int KASSERT (int ,char*) ;
 int M_PCB ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PF_KEY ;
 int PRIV_NET_RAW ;
 int SO_USELOOPBACK ;
 TYPE_3__ V_key_cb ;
 int free (struct keycb*,int ) ;
 struct keycb* malloc (int,int ,int) ;
 int priv_check (struct thread*,int ) ;
 int raw_attach (struct socket*,int) ;
 int soisconnected (struct socket*) ;
 scalar_t__ sotorawcb (struct socket*) ;

__attribute__((used)) static int
key_attach(struct socket *so, int proto, struct thread *td)
{
 struct keycb *kp;
 int error;

 KASSERT(so->so_pcb == ((void*)0), ("key_attach: so_pcb != NULL"));

 if (td != ((void*)0)) {
  error = priv_check(td, PRIV_NET_RAW);
  if (error)
   return error;
 }


 kp = malloc(sizeof *kp, M_PCB, M_WAITOK | M_ZERO);
 if (kp == ((void*)0))
  return ENOBUFS;

 so->so_pcb = (caddr_t)kp;
 error = raw_attach(so, proto);
 kp = (struct keycb *)sotorawcb(so);
 if (error) {
  free(kp, M_PCB);
  so->so_pcb = (caddr_t) 0;
  return error;
 }

 kp->kp_promisc = kp->kp_registered = 0;

 if (kp->kp_raw.rcb_proto.sp_protocol == PF_KEY)
  V_key_cb.key_count++;
 V_key_cb.any_count++;
 soisconnected(so);
 so->so_options |= SO_USELOOPBACK;

 return 0;
}
