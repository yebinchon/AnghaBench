
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct mac_lomac {int dummy; } ;


 int MAC_LOMAC_TYPE_EQUAL ;
 int MAC_LOMAC_TYPE_HIGH ;
 int MAC_LOMAC_TYPE_LOW ;
 struct mac_lomac* SLOT (int ) ;
 int lomac_set_range (struct mac_lomac*,int ,int ,int ,int ) ;
 int lomac_set_single (struct mac_lomac*,int ,int ) ;

__attribute__((used)) static void
lomac_cred_create_swapper(struct ucred *cred)
{
 struct mac_lomac *dest;

 dest = SLOT(cred->cr_label);

 lomac_set_single(dest, MAC_LOMAC_TYPE_EQUAL, 0);
 lomac_set_range(dest, MAC_LOMAC_TYPE_LOW, 0, MAC_LOMAC_TYPE_HIGH, 0);
}
