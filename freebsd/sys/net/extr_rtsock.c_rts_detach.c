
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_4__ {int sp_protocol; } ;
struct rawcb {TYPE_1__ rcb_proto; } ;
struct TYPE_6__ {int any_count; int ip6_count; int ip_count; } ;
struct TYPE_5__ {int (* pru_detach ) (struct socket*) ;} ;




 int KASSERT (int ,char*) ;
 int RTSOCK_LOCK () ;
 int RTSOCK_UNLOCK () ;
 TYPE_3__ V_route_cb ;
 TYPE_2__ raw_usrreqs ;
 struct rawcb* sotorawcb (struct socket*) ;
 int stub1 (struct socket*) ;

__attribute__((used)) static void
rts_detach(struct socket *so)
{
 struct rawcb *rp = sotorawcb(so);

 KASSERT(rp != ((void*)0), ("rts_detach: rp == NULL"));

 RTSOCK_LOCK();
 switch(rp->rcb_proto.sp_protocol) {
 case 129:
  V_route_cb.ip_count--;
  break;
 case 128:
  V_route_cb.ip6_count--;
  break;
 }
 V_route_cb.any_count--;
 RTSOCK_UNLOCK();
 raw_usrreqs.pru_detach(so);
}
