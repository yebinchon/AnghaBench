
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*,struct mbuf*,struct label*) ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;
 int syncache_create_mbuf ;

void
mac_syncache_create_mbuf(struct label *sc_label, struct mbuf *m)
{
 struct label *mlabel;

 M_ASSERTPKTHDR(m);

 if (mac_policy_count == 0)
  return;

 mlabel = mac_mbuf_to_label(m);

 MAC_POLICY_PERFORM_NOSLEEP(syncache_create_mbuf, sc_label, m,
     mlabel);
}
