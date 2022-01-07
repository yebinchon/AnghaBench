
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct inpcb {size_t inp_hpts_cpu; } ;
struct TYPE_4__ {TYPE_1__** rp_ent; } ;
struct TYPE_3__ {int p_delayed_by; } ;


 TYPE_2__ tcp_pace ;

uint16_t
tcp_hpts_delayedby(struct inpcb *inp){
 return (tcp_pace.rp_ent[inp->inp_hpts_cpu]->p_delayed_by);
}
