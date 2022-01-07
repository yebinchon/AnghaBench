
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int td_name; } ;
struct tmpfs_dirent {int td_namelen; TYPE_1__ ud; int td_cookie; int td_hash; } ;


 int memcpy (int ,char const*,int ) ;
 int tmpfs_dirent_hash (char const*,int ) ;

void
tmpfs_dirent_init(struct tmpfs_dirent *de, const char *name, u_int namelen)
{
 de->td_hash = de->td_cookie = tmpfs_dirent_hash(name, namelen);
 memcpy(de->ud.td_name, name, namelen);
 de->td_namelen = namelen;
}
