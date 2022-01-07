
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct inpcb {int inp_label; } ;


 int INP_LOCK_ASSERT (struct inpcb*) ;
 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct inpcb*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct inpcb*,int ) ;
 int inpcb_check_visible ;

int
mac_inpcb_check_visible(struct ucred *cred, struct inpcb *inp)
{
 int error;

 INP_LOCK_ASSERT(inp);

 MAC_POLICY_CHECK_NOSLEEP(inpcb_check_visible, cred, inp,
     inp->inp_label);
 MAC_CHECK_PROBE2(inpcb_check_visible, error, cred, inp);

 return (error);
}
