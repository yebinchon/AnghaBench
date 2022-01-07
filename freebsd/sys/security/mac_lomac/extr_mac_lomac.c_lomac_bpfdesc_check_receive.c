
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;
struct bpf_d {int dummy; } ;


 int EACCES ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_enabled ;
 scalar_t__ lomac_equal_single (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static int
lomac_bpfdesc_check_receive(struct bpf_d *d, struct label *dlabel,
    struct ifnet *ifp, struct label *ifplabel)
{
 struct mac_lomac *a, *b;

 if (!lomac_enabled)
  return (0);

 a = SLOT(dlabel);
 b = SLOT(ifplabel);

 if (lomac_equal_single(a, b))
  return (0);
 return (EACCES);
}
