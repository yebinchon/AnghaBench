
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 int EACCES ;
 struct mac_biba* SLOT (struct label*) ;
 scalar_t__ biba_effective_in_range (struct mac_biba*,struct mac_biba*) ;
 int biba_enabled ;

__attribute__((used)) static int
biba_ifnet_check_transmit(struct ifnet *ifp, struct label *ifplabel,
    struct mbuf *m, struct label *mlabel)
{
 struct mac_biba *p, *i;

 if (!biba_enabled)
  return (0);

 p = SLOT(mlabel);
 i = SLOT(ifplabel);

 return (biba_effective_in_range(p, i) ? 0 : EACCES);
}
