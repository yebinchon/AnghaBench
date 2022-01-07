
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;
struct bpf_d {int dummy; } ;


 int EACCES ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_enabled ;
 scalar_t__ mls_equal_effective (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static int
mls_bpfdesc_check_receive(struct bpf_d *d, struct label *dlabel,
     struct ifnet *ifp, struct label *ifplabel)
{
 struct mac_mls *a, *b;

 if (!mls_enabled)
  return (0);

 a = SLOT(dlabel);
 b = SLOT(ifplabel);

 if (mls_equal_effective(a, b))
  return (0);
 return (EACCES);
}
