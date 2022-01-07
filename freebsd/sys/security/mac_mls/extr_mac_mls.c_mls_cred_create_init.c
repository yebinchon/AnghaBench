
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct mac_mls {int dummy; } ;


 int MAC_MLS_TYPE_HIGH ;
 int MAC_MLS_TYPE_LOW ;
 struct mac_mls* SLOT (int ) ;
 int mls_set_effective (struct mac_mls*,int ,int ,int *) ;
 int mls_set_range (struct mac_mls*,int ,int ,int *,int ,int ,int *) ;

__attribute__((used)) static void
mls_cred_create_init(struct ucred *cred)
{
 struct mac_mls *dest;

 dest = SLOT(cred->cr_label);

 mls_set_effective(dest, MAC_MLS_TYPE_LOW, 0, ((void*)0));
 mls_set_range(dest, MAC_MLS_TYPE_LOW, 0, ((void*)0), MAC_MLS_TYPE_HIGH, 0,
     ((void*)0));
}
