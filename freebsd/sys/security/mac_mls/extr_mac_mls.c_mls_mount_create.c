
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 struct mac_mls* SLOT (struct label*) ;
 int mls_copy_effective (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static void
mls_mount_create(struct ucred *cred, struct mount *mp, struct label *mplabel)
{
 struct mac_mls *source, *dest;

 source = SLOT(cred->cr_label);
 dest = SLOT(mplabel);

 mls_copy_effective(source, dest);
}
