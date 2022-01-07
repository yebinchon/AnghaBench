
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mount {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int lomac_copy_single (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_devfs_create_symlink(struct ucred *cred, struct mount *mp,
    struct devfs_dirent *dd, struct label *ddlabel, struct devfs_dirent *de,
    struct label *delabel)
{
 struct mac_lomac *source, *dest;

 source = SLOT(cred->cr_label);
 dest = SLOT(delabel);

 lomac_copy_single(source, dest);
}
