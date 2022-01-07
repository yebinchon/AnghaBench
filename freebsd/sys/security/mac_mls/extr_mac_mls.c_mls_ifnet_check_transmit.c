
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 int EACCES ;
 struct mac_mls* SLOT (struct label*) ;
 scalar_t__ mls_effective_in_range (struct mac_mls*,struct mac_mls*) ;
 int mls_enabled ;

__attribute__((used)) static int
mls_ifnet_check_transmit(struct ifnet *ifp, struct label *ifplabel,
    struct mbuf *m, struct label *mlabel)
{
 struct mac_mls *p, *i;

 if (!mls_enabled)
  return (0);

 p = SLOT(mlabel);
 i = SLOT(ifplabel);

 return (mls_effective_in_range(p, i) ? 0 : EACCES);
}
