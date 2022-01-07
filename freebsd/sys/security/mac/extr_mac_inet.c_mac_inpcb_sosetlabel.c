
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_label; } ;
struct inpcb {int inp_label; } ;


 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct socket*,int ,struct inpcb*,int ) ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 int inpcb_sosetlabel ;

void
mac_inpcb_sosetlabel(struct socket *so, struct inpcb *inp)
{

 INP_WLOCK_ASSERT(inp);
 SOCK_LOCK_ASSERT(so);

 MAC_POLICY_PERFORM_NOSLEEP(inpcb_sosetlabel, so, so->so_label, inp,
     inp->inp_label);
}
