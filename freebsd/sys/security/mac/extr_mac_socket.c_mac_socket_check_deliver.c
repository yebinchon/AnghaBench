
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_label; } ;
struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct socket*,struct mbuf*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct socket*,int ,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;
 int socket_check_deliver ;

int
mac_socket_check_deliver(struct socket *so, struct mbuf *m)
{
 struct label *label;
 int error;

 if (mac_policy_count == 0)
  return (0);

 label = mac_mbuf_to_label(m);

 MAC_POLICY_CHECK_NOSLEEP(socket_check_deliver, so, so->so_label, m,
     label);
 MAC_CHECK_PROBE2(socket_check_deliver, error, so, m);

 return (error);
}
