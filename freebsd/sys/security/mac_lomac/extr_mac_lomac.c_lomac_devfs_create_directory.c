
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;


 int MAC_LOMAC_TYPE_HIGH ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_set_single (struct mac_lomac*,int ,int ) ;

__attribute__((used)) static void
lomac_devfs_create_directory(struct mount *mp, char *dirname, int dirnamelen,
    struct devfs_dirent *de, struct label *delabel)
{
 struct mac_lomac *ml;

 ml = SLOT(delabel);
 lomac_set_single(ml, MAC_LOMAC_TYPE_HIGH, 0);
}
