
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_peerlabel; } ;
struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct mbuf*,struct label*,struct socket*,int ) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;
 int socketpeer_set_from_mbuf ;

void
mac_socketpeer_set_from_mbuf(struct mbuf *m, struct socket *so)
{
 struct label *label;

 if (mac_policy_count == 0)
  return;

 label = mac_mbuf_to_label(m);

 MAC_POLICY_PERFORM_NOSLEEP(socketpeer_set_from_mbuf, m, label, so,
     so->so_peerlabel);
}
