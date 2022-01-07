
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;


 int MAC_MLS_TYPE_LOW ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_set_effective (struct mac_mls*,int ,int ,int *) ;

__attribute__((used)) static void
mls_devfs_create_directory(struct mount *mp, char *dirname, int dirnamelen,
    struct devfs_dirent *de, struct label *delabel)
{
 struct mac_mls *mm;

 mm = SLOT(delabel);
 mls_set_effective(mm, MAC_MLS_TYPE_LOW, 0, ((void*)0));
}
