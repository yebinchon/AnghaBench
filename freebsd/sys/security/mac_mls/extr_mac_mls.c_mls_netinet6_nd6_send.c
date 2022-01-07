
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 int MAC_MLS_TYPE_EQUAL ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_set_effective (struct mac_mls*,int ,int ,int *) ;

__attribute__((used)) static void
mls_netinet6_nd6_send(struct ifnet *ifp, struct label *ifplabel,
    struct mbuf *m, struct label *mlabel)
{
 struct mac_mls *dest;

 dest = SLOT(mlabel);

 mls_set_effective(dest, MAC_MLS_TYPE_EQUAL, 0, ((void*)0));
}
