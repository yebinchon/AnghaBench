
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;


 int MAC_BIBA_TYPE_HIGH ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_set_effective (struct mac_biba*,int ,int ,int *) ;

__attribute__((used)) static void
biba_devfs_create_directory(struct mount *mp, char *dirname, int dirnamelen,
    struct devfs_dirent *de, struct label *delabel)
{
 struct mac_biba *mb;

 mb = SLOT(delabel);

 biba_set_effective(mb, MAC_BIBA_TYPE_HIGH, 0, ((void*)0));
}
