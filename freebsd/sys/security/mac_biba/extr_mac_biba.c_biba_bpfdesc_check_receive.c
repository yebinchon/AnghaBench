
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;
struct bpf_d {int dummy; } ;


 int EACCES ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_enabled ;
 scalar_t__ biba_equal_effective (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static int
biba_bpfdesc_check_receive(struct bpf_d *d, struct label *dlabel,
    struct ifnet *ifp, struct label *ifplabel)
{
 struct mac_biba *a, *b;

 if (!biba_enabled)
  return (0);

 a = SLOT(dlabel);
 b = SLOT(ifplabel);

 if (biba_equal_effective(a, b))
  return (0);
 return (EACCES);
}
