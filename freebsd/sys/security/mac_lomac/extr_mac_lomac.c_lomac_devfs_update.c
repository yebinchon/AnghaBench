
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int lomac_copy (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_devfs_update(struct mount *mp, struct devfs_dirent *de,
    struct label *delabel, struct vnode *vp, struct label *vplabel)
{
 struct mac_lomac *source, *dest;

 source = SLOT(vplabel);
 dest = SLOT(delabel);

 lomac_copy(source, dest);
}
