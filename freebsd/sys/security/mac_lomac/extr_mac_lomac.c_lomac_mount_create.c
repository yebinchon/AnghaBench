
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int lomac_copy_single (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_mount_create(struct ucred *cred, struct mount *mp,
    struct label *mplabel)
{
 struct mac_lomac *source, *dest;

 source = SLOT(cred->cr_label);
 dest = SLOT(mplabel);
 lomac_copy_single(source, dest);
}
