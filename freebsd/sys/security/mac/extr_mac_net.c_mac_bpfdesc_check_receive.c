
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_label; } ;
struct bpf_d {int bd_label; } ;


 int BPFD_LOCK_ASSERT (struct bpf_d*) ;
 int MAC_CHECK_PROBE2 (int ,int,struct bpf_d*,struct ifnet*) ;
 int MAC_IFNET_LOCK (struct ifnet*,int) ;
 int MAC_IFNET_UNLOCK (struct ifnet*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct bpf_d*,int ,struct ifnet*,int ) ;
 int bpfdesc_check_receive ;
 scalar_t__ mac_policy_count ;

int
mac_bpfdesc_check_receive(struct bpf_d *d, struct ifnet *ifp)
{
 int error, locked;


 BPFD_LOCK_ASSERT(d);

 if (mac_policy_count == 0)
  return (0);

 MAC_IFNET_LOCK(ifp, locked);
 MAC_POLICY_CHECK_NOSLEEP(bpfdesc_check_receive, d, d->bd_label, ifp,
     ifp->if_label);
 MAC_CHECK_PROBE2(bpfdesc_check_receive, error, d, ifp);
 MAC_IFNET_UNLOCK(ifp, locked);

 return (error);
}
