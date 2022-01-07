
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctphdr {int dummy; } ;
struct sctp_nets {scalar_t__ cwnd; int mtu; } ;
struct sctp_association {scalar_t__ max_cwnd; } ;



__attribute__((used)) static void
sctp_enforce_cwnd_limit(struct sctp_association *assoc, struct sctp_nets *net)
{
 if ((assoc->max_cwnd > 0) &&
     (net->cwnd > assoc->max_cwnd) &&
     (net->cwnd > (net->mtu - sizeof(struct sctphdr)))) {
  net->cwnd = assoc->max_cwnd;
  if (net->cwnd < (net->mtu - sizeof(struct sctphdr))) {
   net->cwnd = net->mtu - sizeof(struct sctphdr);
  }
 }
}
