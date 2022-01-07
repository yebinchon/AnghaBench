
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 struct mac_biba* SLOT (struct label*) ;
 int biba_copy (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static void
biba_ifnet_relabel(struct ucred *cred, struct ifnet *ifp,
    struct label *ifplabel, struct label *newlabel)
{
 struct mac_biba *source, *dest;

 source = SLOT(newlabel);
 dest = SLOT(ifplabel);

 biba_copy(source, dest);
}
