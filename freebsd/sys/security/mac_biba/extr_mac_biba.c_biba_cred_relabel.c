
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;


 struct mac_biba* SLOT (struct label*) ;
 int biba_copy (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static void
biba_cred_relabel(struct ucred *cred, struct label *newlabel)
{
 struct mac_biba *source, *dest;

 source = SLOT(newlabel);
 dest = SLOT(cred->cr_label);

 biba_copy(source, dest);
}
