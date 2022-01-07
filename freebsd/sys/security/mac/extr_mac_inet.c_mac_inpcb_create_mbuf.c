
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int inp_label; } ;


 int INP_LOCK_ASSERT (struct inpcb*) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct inpcb*,int ,struct mbuf*,struct label*) ;
 int inpcb_create_mbuf ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;

void
mac_inpcb_create_mbuf(struct inpcb *inp, struct mbuf *m)
{
 struct label *mlabel;

 INP_LOCK_ASSERT(inp);

 if (mac_policy_count == 0)
  return;

 mlabel = mac_mbuf_to_label(m);

 MAC_POLICY_PERFORM_NOSLEEP(inpcb_create_mbuf, inp, inp->inp_label, m,
     mlabel);
}
