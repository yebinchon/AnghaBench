
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_rxtshift; int t_flags; } ;
struct TYPE_3__ {scalar_t__ rc_went_idle_time; scalar_t__ rc_hpts_flags; } ;
struct tcp_rack {TYPE_1__ r_ctl; scalar_t__ rc_in_persist; TYPE_2__* rc_inp; } ;
struct TYPE_4__ {scalar_t__ inp_in_hpts; } ;


 int HPTS_REMOVE_OUTPUT ;
 int TF_FORCEDATA ;
 int tcp_hpts_remove (TYPE_2__*,int ) ;

__attribute__((used)) static void
rack_exit_persist(struct tcpcb *tp, struct tcp_rack *rack)
{
 if (rack->rc_inp->inp_in_hpts) {
  tcp_hpts_remove(rack->rc_inp, HPTS_REMOVE_OUTPUT);
  rack->r_ctl.rc_hpts_flags = 0;
 }
 rack->rc_in_persist = 0;
 rack->r_ctl.rc_went_idle_time = 0;
 tp->t_flags &= ~TF_FORCEDATA;
 tp->t_rxtshift = 0;
}
