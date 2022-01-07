
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mount {int mnt_label; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct mount*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct mount*,int ) ;
 int mount_check_stat ;

int
mac_mount_check_stat(struct ucred *cred, struct mount *mount)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(mount_check_stat, cred, mount, mount->mnt_label);
 MAC_CHECK_PROBE2(mount_check_stat, error, cred, mount);

 return (error);
}
