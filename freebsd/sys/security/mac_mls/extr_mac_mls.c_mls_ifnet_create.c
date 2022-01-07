
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {scalar_t__ if_type; } ;


 scalar_t__ IFT_LOOP ;
 int MAC_MLS_TYPE_EQUAL ;
 int MAC_MLS_TYPE_LOW ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_set_effective (struct mac_mls*,int,int ,int *) ;
 int mls_set_range (struct mac_mls*,int,int ,int *,int,int ,int *) ;

__attribute__((used)) static void
mls_ifnet_create(struct ifnet *ifp, struct label *ifplabel)
{
 struct mac_mls *dest;
 int type;

 dest = SLOT(ifplabel);

 if (ifp->if_type == IFT_LOOP)
  type = MAC_MLS_TYPE_EQUAL;
 else
  type = MAC_MLS_TYPE_LOW;

 mls_set_effective(dest, type, 0, ((void*)0));
 mls_set_range(dest, type, 0, ((void*)0), type, 0, ((void*)0));
}
