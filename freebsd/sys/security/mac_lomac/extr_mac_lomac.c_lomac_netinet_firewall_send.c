
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 int MAC_LOMAC_TYPE_EQUAL ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_set_single (struct mac_lomac*,int ,int ) ;

__attribute__((used)) static void
lomac_netinet_firewall_send(struct mbuf *m, struct label *mlabel)
{
 struct mac_lomac *dest;

 dest = SLOT(mlabel);


 lomac_set_single(dest, MAC_LOMAC_TYPE_EQUAL, 0);
}
