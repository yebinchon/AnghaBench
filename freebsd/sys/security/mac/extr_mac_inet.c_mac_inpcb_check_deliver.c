
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int inp_label; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct inpcb*,struct mbuf*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct inpcb*,int ,struct mbuf*,struct label*) ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 int inpcb_check_deliver ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;

int
mac_inpcb_check_deliver(struct inpcb *inp, struct mbuf *m)
{
 struct label *label;
 int error;

 M_ASSERTPKTHDR(m);

 if (mac_policy_count == 0)
  return (0);

 label = mac_mbuf_to_label(m);

 MAC_POLICY_CHECK_NOSLEEP(inpcb_check_deliver, inp, inp->inp_label, m,
     label);
 MAC_CHECK_PROBE2(inpcb_check_deliver, error, inp, m);

 return (error);
}
