
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct mac_biba {int dummy; } ;


 int MAC_BIBA_TYPE_HIGH ;
 int MAC_BIBA_TYPE_LOW ;
 struct mac_biba* SLOT (int ) ;
 int biba_set_effective (struct mac_biba*,int ,int ,int *) ;
 int biba_set_range (struct mac_biba*,int ,int ,int *,int ,int ,int *) ;

__attribute__((used)) static void
biba_cred_associate_nfsd(struct ucred *cred)
{
 struct mac_biba *label;

 label = SLOT(cred->cr_label);
 biba_set_effective(label, MAC_BIBA_TYPE_LOW, 0, ((void*)0));
 biba_set_range(label, MAC_BIBA_TYPE_LOW, 0, ((void*)0), MAC_BIBA_TYPE_HIGH,
     0, ((void*)0));
}
