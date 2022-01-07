
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct inpcb {int inp_fport; int inp_lport; TYPE_2__ inp_faddr; TYPE_1__ inp_laddr; } ;


 int INP_LOCK_ASSERT (struct inpcb*) ;

void
inp_4tuple_get(struct inpcb *inp, uint32_t *laddr, uint16_t *lp,
    uint32_t *faddr, uint16_t *fp)
{

 INP_LOCK_ASSERT(inp);
 *laddr = inp->inp_laddr.s_addr;
 *faddr = inp->inp_faddr.s_addr;
 *lp = inp->inp_lport;
 *fp = inp->inp_fport;
}
