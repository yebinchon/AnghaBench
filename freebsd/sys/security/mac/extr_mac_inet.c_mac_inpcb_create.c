
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_label; } ;
struct inpcb {int inp_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct socket*,int ,struct inpcb*,int ) ;
 int inpcb_create ;

void
mac_inpcb_create(struct socket *so, struct inpcb *inp)
{

 MAC_POLICY_PERFORM_NOSLEEP(inpcb_create, so, so->so_label, inp,
     inp->inp_label);
}
