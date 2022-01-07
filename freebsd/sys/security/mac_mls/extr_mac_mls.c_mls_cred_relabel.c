
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 struct mac_mls* SLOT (struct label*) ;
 int mls_copy (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static void
mls_cred_relabel(struct ucred *cred, struct label *newlabel)
{
 struct mac_mls *source, *dest;

 source = SLOT(newlabel);
 dest = SLOT(cred->cr_label);

 mls_copy(source, dest);
}
