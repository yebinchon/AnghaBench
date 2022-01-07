
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int try_relabel (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_ifnet_relabel(struct ucred *cred, struct ifnet *ifp,
    struct label *ifplabel, struct label *newlabel)
{
 struct mac_lomac *source, *dest;

 source = SLOT(newlabel);
 dest = SLOT(ifplabel);

 try_relabel(source, dest);
}
