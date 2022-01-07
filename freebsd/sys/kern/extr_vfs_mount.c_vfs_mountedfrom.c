
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f_mntfromname; } ;
struct mount {TYPE_1__ mnt_stat; } ;


 int bzero (int ,int) ;
 int strlcpy (int ,char const*,int) ;

void
vfs_mountedfrom(struct mount *mp, const char *from)
{

 bzero(mp->mnt_stat.f_mntfromname, sizeof mp->mnt_stat.f_mntfromname);
 strlcpy(mp->mnt_stat.f_mntfromname, from,
     sizeof mp->mnt_stat.f_mntfromname);
}
