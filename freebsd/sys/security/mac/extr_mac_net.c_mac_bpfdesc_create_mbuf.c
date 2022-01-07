
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct bpf_d {int bd_label; } ;


 int BPFD_LOCK_ASSERT (struct bpf_d*) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct bpf_d*,int ,struct mbuf*,struct label*) ;
 int bpfdesc_create_mbuf ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 scalar_t__ mac_policy_count ;

void
mac_bpfdesc_create_mbuf(struct bpf_d *d, struct mbuf *m)
{
 struct label *label;


 BPFD_LOCK_ASSERT(d);

 if (mac_policy_count == 0)
  return;

 label = mac_mbuf_to_label(m);

 MAC_POLICY_PERFORM_NOSLEEP(bpfdesc_create_mbuf, d, d->bd_label, m,
     label);
}
