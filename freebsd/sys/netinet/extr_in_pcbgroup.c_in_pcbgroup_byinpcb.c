
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inpcbgroup {int dummy; } ;
struct inpcb {int inp_flags2; size_t inp_rss_listen_bucket; int inp_fport; int inp_faddr; int inp_lport; int inp_laddr; TYPE_1__* inp_pcbinfo; } ;
struct TYPE_2__ {struct inpcbgroup* ipi_pcbgroups; } ;


 int INP_RSS_BUCKET_SET ;
 struct inpcbgroup* in_pcbgroup_bytuple (TYPE_1__*,int ,int ,int ,int ) ;

struct inpcbgroup *
in_pcbgroup_byinpcb(struct inpcb *inp)
{
 return (in_pcbgroup_bytuple(inp->inp_pcbinfo, inp->inp_laddr,
     inp->inp_lport, inp->inp_faddr, inp->inp_fport));
}
