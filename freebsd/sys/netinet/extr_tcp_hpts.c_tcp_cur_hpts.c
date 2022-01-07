
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_hpts_entry {int dummy; } ;
struct inpcb {size_t inp_hpts_cpu; } ;
typedef size_t int32_t ;
struct TYPE_2__ {struct tcp_hpts_entry** rp_ent; } ;


 TYPE_1__ tcp_pace ;

struct tcp_hpts_entry *
tcp_cur_hpts(struct inpcb *inp)
{
 int32_t hpts_num;
 struct tcp_hpts_entry *hpts;

 hpts_num = inp->inp_hpts_cpu;
 hpts = tcp_pace.rp_ent[hpts_num];
 return (hpts);
}
